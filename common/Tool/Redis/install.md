# 安装

------

- [安装](#安装)
  - [docker](#docker)
  - [windows](#windows)
    - [下载安装](#下载安装)
  - [linux](#linux)
    - [源码安装](#源码安装)
    - [yum安装](#yum安装)
    - [运行](#运行)

------

## docker

[https://hub.docker.com/_/redis](https://hub.docker.com/_/redis)

`docker pull redis`

```sh
docker volume create --name redisdb
docker run --name redis -v redisdb:/data -p 6379:6379 -d redis
```

## windows

### 下载安装

[https://github.com/microsoftarchive/redis](https://github.com/microsoftarchive/redis)

## linux

### 源码安装

```sh
wget http://download.redis.io/releases/redis-4.0.2.tar.gz
tar xzf redis-4.0.2.tar.gz
make

# 对应的配置文件位置
# /etc/init.d/redis_6379
```

### yum安装

```sh
yum install -y redis
```

### 运行

1. 脚本运行

```sh
#!/bin/sh
#Configurations injected by install_server below....

EXEC=/usr/local/bin/redis-server
CLIEXEC=/usr/local/bin/redis-cli
PIDFILE=/var/run/redis_6379.pid
CONF="/etc/redis/6379.conf"
REDISPORT="6379"
###############
# SysV Init Information
# chkconfig: - 58 74
# description: redis_6379 is the redis daemon.
### BEGIN INIT INFO
# Provides: redis_6379
# Required-Start: $network $local_fs $remote_fs
# Required-Stop: $network $local_fs $remote_fs
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Should-Start: $syslog $named
# Should-Stop: $syslog $named
# Short-Description: start and stop redis_6379
# Description: Redis daemon
### END INIT INFO

case "$1" in
    start)
        if [ -f $PIDFILE ]
        then
            echo "$PIDFILE exists, process is already running or crashed"
        else
            echo "Starting Redis server..."
            $EXEC $CONF
        fi
        ;;
    stop)
        if [ ! -f $PIDFILE ]
        then
            echo "$PIDFILE does not exist, process is not running"
        else
            PID=$(cat $PIDFILE)
            echo "Stopping ..."
            $CLIEXEC -p $REDISPORT shutdown
            while [ -x /proc/${PID} ]
            do
                echo "Waiting for Redis to shutdown ..."
                sleep 1
            done
            echo "Redis stopped"
        fi
        ;;
    status)
        PID=$(cat $PIDFILE)
        if [ ! -x /proc/${PID} ]
        then
            echo 'Redis is not running'
        else
            echo "Redis is running ($PID)"
        fi
        ;;
    restart)
        $0 stop
        $0 start
        ;;
    *)
        echo "Please use start, stop, restart or status as first argument"
        ;;
esac
```

2. systemctl 运行

```sh
systemctl start redis.service
systemctl stop redis.service
```
