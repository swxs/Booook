# 安装

------

- [安装](#安装)
  - [源码安装](#源码安装)
    - [配置启动脚本](#配置启动脚本)
    - [通用基础设置](#通用基础设置)
  - [centos 安装](#centos-安装)

------

## 源码安装

```sh
- wget http://nginx.org/download/nginx-1.12.1.tar.gz
- wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.41.tar.gz
- yum -y install gcc gcc-c++ autoconf automake make 
- yum -y install openssl openssl-devel  
- tar -xzf nginx-1.12.1.tar.gz
- tar -xzf pcre-8.41.tar.gz
- cd nginx-1.12.1
- ./configure --prefix=/usr/local/nginx --with-pcre=../pcre-8.41 --with-http_gunzip_module --with-http_stub_status_module --with-http_ssl_module
- make&&make install
- vim /etc/rc.d/init.d/nginx
```

### 配置启动脚本

```sh
#!/bin/sh
# chkconfig: - 85 15
# description: nginx is a World Wide Web server. It is used to serve

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

DESC="nginx daemon"
NAME=nginx
DAEMON=/usr/local/nginx/sbin/nginx
CONFIGFILE=/usr/local/nginx/conf/nginx.conf
PIDFILE=/usr/local/nginx/logs/nginx.pid
SCRIPTNAME=/etc/init.d/nginx

set -e
[ -x "$DAEMON" ] || exit 0

do_start() {
$DAEMON -c $CONFIGFILE || echo -n "nginx already running"
}

do_stop() {
kill -INT `cat $PIDFILE` || echo -n "nginx not running"
}

do_reload() {
kill -HUP `cat $PIDFILE` || echo -n "nginx can't reload"
}

case "$1" in
start)
echo -n "Starting $DESC: $NAME"
do_start
echo "."
;;
stop)
echo -n "Stopping $DESC: $NAME"
do_stop
echo "."
;;
reload|graceful)
echo -n "Reloading $DESC configuration..."
do_reload
echo "."
;;
restart)
echo -n "Restarting $DESC: $NAME"
do_stop
do_start
echo "."
;;
*)
echo "Usage: $SCRIPTNAME {start|stop|reload|restart}" >&2
exit 3
;;
esac

exit 0
```

### 通用基础设置

```sh
user                    nobody;
worker_processes        4;
worker_cpu_affinity     0001 0010 0100 1000;
worker_rlimit_nofile    65535;

events {
    use epoll;
    worker_connections  65535;
}

http {
    include             mime.types;
    default_type        application/octet-stream;

    log_format  idy     '$remote_addr $remote_port $remote_user $time_iso8601 $request_time $status $body_bytes_sent '
                        '"$request" "$request_body" "$http_referer" "$http_user_agent" "$http_x_forwarded_for"';

    sendfile            on;
    keepalive_timeout   65;
    gzip                on;
    gzip_min_length     1k;
    gzip_buffers        4 16k;
    gzip_http_version   1.0;
    gzip_comp_level     2;
    gzip_types          text/plain application/x-javascript text/css application/xml text/vnd.wap.wml;
    gzip_vary           on;
    open_file_cache     max=327680 inactive=20s;
    open_file_cache_min_uses      1;
    open_file_cache_valid         30s;

    proxy_ignore_client_abort on;

    proxy_set_header Host $host;
    proxy_set_header X-Scheme $scheme;
    proxy_set_header X-Real-IP $http_x_forwarded_for;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

    client_max_body_size 50m;
    client_body_buffer_size 256k;
    proxy_connect_timeout 60;
    proxy_next_upstream  error timeout http_502;
    proxy_send_timeout 60;
    proxy_read_timeout 60;
    proxy_buffer_size 512k;
    proxy_buffers 8 512k;
    proxy_busy_buffers_size 512k;
    proxy_temp_file_write_size 512k;
    #proxy_buffering off;

     include     vhosts/*.conf;
}
```

## centos 安装

```sh
yum install nginx
nginx -s reload -c /etc/nginx/nginx.conf
```
