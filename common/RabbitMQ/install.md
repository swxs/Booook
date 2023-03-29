# 安装

-------

- [安装](#安装)
  - [docker](#docker)
  - [配置](#配置)
  - [设置](#设置)

-------

## docker

- image: [https://hub.docker.com/_/rabbitmq](https://hub.docker.com/_/rabbitmq)

`docker pull rabbitmq:3-management`

``` sh
docker volume create --name rabbitmqconfig
docker run -d --hostname rabbit --name rabbit -p 15672:15672 -p 5672:5672 -v rabbitmqconfig:/var/lib/rabbitmq rabbitmq:3-management
# user/password: guest/guest
```

## 配置

- 文档: [https://www.rabbitmq.com/configure.html#customise-environment](https://www.rabbitmq.com/configure.html#customise-environment)

## 设置

```
rabbitmqctl add_user <username> <password>
rabbitmqctl add_vhost <vhost>
rabbitmqctl set_permissions -p <vhost> <username> '.*' '.*' '.*'
rabbitmqctl set_user_tags <username> administrator
```

e.g.
```
rabbitmqctl add_user clickhouse clickhouse
rabbitmqctl add_vhost clickhouse
rabbitmqctl set_permissions -p clickhouse clickhouse '.*' '.*' '.*'
rabbitmqctl set_user_tags clickhouse administrator
```