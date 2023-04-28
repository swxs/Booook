# 私有服务架构迁移

------

- [私有服务架构迁移](#私有服务架构迁移)
  - [历史架构](#历史架构)
    - [老架构存在的问题](#老架构存在的问题)
  - [迁移后架构](#迁移后架构)
    - [http自动跳转https](#http自动跳转https)
    - [自动tls证书](#自动tls证书)
    - [证书验证中间件](#证书验证中间件)


------

## 历史架构

以两层nginx反向代理

``` mermaid
graph TD;
    A[访问网址]-->B(入口nginx代理);
    B(入口nginx代理)-->|proxy|C(前端nginx代理);
    C(前端nginx代理)-->|upstream|D(后端服务);
```

第一层nginx代理域名到内网服务
```
upstream server_list {
  server localhost:8051
}

server {
  listen:       80;
  server_name:  password.moveright.top

  location / {
    root        html;
    proxy_pass  http://server_list;
    index       index.html index.htm;
  }
}
```

内网nginx通过nginx-proxy动态代理到后端服务
```
version: '3.9'
services:
  home:
    container_name: home
    hostname: home
    image: ******
    restart: unless-stopped
    network_mode: "host"
    volumes:
      - /data/docker/mount/home/logs:/home/logs
    ports:
      - "8000:8000"
    working_dir: /home
    command: uvicorn main:app --host 0.0.0.0 --port 8000
    environment:
      # 这些可以被nginx-proxy获取到，动态修改nginx配置
      - VIRTUAL_HOST=47.100.32.32
      - VIRTUAL_PORT=8000
    extra_hosts:
      - "xm_redis:127.0.0.1"
      - "xm_mongo:127.0.0.1"

  openapi_passwordlock:
    container_name: openapi_passwordlock
    hostname: openapi_passwordlock
    image: registry-vpc.cn-shanghai.aliyuncs.com/swxs/openapi_passwordlock
    restart: always
    volumes:
      - /data/docker/mount/home/nginx/logs/:/etc/nginx/logs/
      # 这边需要获取到docker
      - /var/run/docker.sock:/var/run/docker.sock
    ports:
      - "8051:80"
    command: /etc/docker-gen/docker-gen -config /etc/docker-gen/docker-gen.cfg
```

前端容器内存在的nginx配置模板，动态创建配置
```
{{ range $host, $containers := groupBy $ "Env.VIRTUAL_HOST" }}
upstream {{ $host }} {
    least_conn;
{{ range $index, $value := $containers }}
    server {{ $value.Env.VIRTUAL_HOST }}:{{ $value.Env.VIRTUAL_PORT }} weight=10 max_fails=1 fail_timeout=2;
{{ end }}

}

server {
    server_name     {{ $host }};
    server_tokens   off;

    access_log      /etc/nginx/logs/{{ $host }}_access.log common;
    error_log       /etc/nginx/logs/{{ $host }}_error.log;

    root /data/;

    index index.html;

    location /api/ {
        proxy_pass   http://{{ $host }};
        proxy_set_header    Host              $host;
        proxy_set_header    X-Real-Ip         $http_x_forwarded_for;
        proxy_set_header    X-Forwarded-For   $proxy_add_x_forwarded_for;
        proxy_set_header    X-Scheme $scheme; #告知tornado当前使用的是http还是https
        proxy_redirect      default;
    }

    location /static/ {
        access_log off;
        alias /data/static/;
    }

    location / {
         try_files $uri $uri/ /index.html?$query_string;
    }

    location @rewrites {
         rewrite ^(.+)$ /index.html last;
    }

    location /ngx_status {
        stub_status on;
        access_log off;
    }

    location ~* \.(?:ico|css|js|gif|jpe?g|png)$ {
        add_header Pragma public;
        add_header Cache-Control "public, must-revalidate, proxy-revalidate";
    }
}
{{ end }}
```

### 老架构存在的问题

第二层nginx, 依赖nginx-proxy, 存在前后端耦合问题, 心智要求较高

## 迁移后架构

``` mermaid
graph TD;
    A[访问网址]-->B(Traefik代理);
    B(Traefik代理)-->|proxy|C(前端nginx代理);
    B(Traefik代理)-->|proxy|D(后端服务);
```

通过traefik动态负载前后端服务

> traefik配置

```
providers:
  docker:
    endpoint: "unix:///var/run/docker.sock"
    exposedByDefault: false

entryPoints:
  web:
    address: ":80"
```

> 具体服务配置

```
  home:
    labels:
      - "traefik.enable=true"
      - "traefik.http.services.home.loadbalancer.server.port=8000"
      - "traefik.http.routers.home.rule=PathPrefix(`/api`)"
      - "traefik.http.routers.home.priority=100"
      - "traefik.http.routers.home.entrypoints=web"
      - "traefik.http.routers.home.service=home"
```

```
  openapi_passwordlock:
    labels:
      - "traefik.enable=true"
      - "traefik.http.services.openapi_passwordlock.loadbalancer.server.port=80"
      - "traefik.http.routers.openapi_passwordlock.rule=Host(`password.moveright.top`)"
      - "traefik.http.routers.openapi_passwordlock.entrypoints=web"
      - "traefik.http.routers.openapi_passwordlock.service=openapi_passwordlock"
```

### http自动跳转https

> traefik配置

```
entryPoints:
  web:
    address: ":80"
    http:
      redirections:
        entryPoint:
          to: websecure
          scheme: https

  websecure:
    address: ":443"
    http:
      tls:
        certResolver: "letsencrypt"
        domains:
          - main: "*.moveright.top"
```

> 具体服务配置修改

```
    labels:
      - "traefik.http.routers.whoami.entrypoints=websecure"
      - "traefik.http.routers.whoami.tls=true"
```

### 自动tls证书

> traefik配置

有三种证书获取方式可选，这边使用dnsChallenge，好处是支持泛域名

```
certificatesResolvers:
  letsencrypt:
    acme:
      email: ""
      storage: "/letsencrypt/acme.json"
      dnsChallenge:
        provider: "alidns"
        delayBeforeCheck: 0
```

修改阿里云配置
1. 添加RAM用户，授予所有域名相关权限 

2. 获取AccessKey ID并配置`docker-compose.yml`环境变量
```
    environment:
      - ALICLOUD_ACCESS_KEY=***
      - ALICLOUD_SECRET_KEY=***
      - ALICLOUD_REGION_ID=cn-shanghai
```
3. 重启等待证书生成

### 证书验证中间件

> 具体服务配置修改

```
    labels:
      - "traefik.http.routers.dashboard.middlewares=dashboard"
      - "traefik.http.middlewares.dashboard.basicauth.users=swxs:$$apr1$$XN0o2eiY$$mJ4mqPzpIuiiA1VRJ3hLi0"
```
