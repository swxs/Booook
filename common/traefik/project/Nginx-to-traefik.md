# 私有服务架构迁移

------

- [私有服务架构迁移](#私有服务架构迁移)
  - [历史架构](#历史架构)
    - [老架构存在的问题](#老架构存在的问题)
  - [迁移后架构](#迁移后架构)


------

## 历史架构

以两层nginx反向代理

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

第二层nginx, 依赖nginx-proxy, 存在前后端耦合问题

流量频繁从nginx流入流出

## 迁移后架构

通过traefik动态负载前后端服务

```
  home:
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.home.rule=PathPrefix(`/api`)"
      - "traefik.http.routers.home.priority=100"
      - "traefik.http.routers.home.entrypoints=web"
      - "traefik.http.routers.home.service=home"
      - "traefik.http.services.home.loadbalancer.server.port=8000"
```

```
  openapi_passwordlock:
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.openapi_passwordlock.rule=Host(`password.moveright.top`)"
      - "traefik.http.routers.openapi_passwordlock.entrypoints=web"
      - "traefik.http.routers.openapi_passwordlock.service=openapi_passwordlock"
      - "traefik.http.services.openapi_passwordlock.loadbalancer.server.port=80"
```
