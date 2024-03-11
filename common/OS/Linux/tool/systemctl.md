# systemctl

------

- [systemctl](#systemctl)
  - [命令](#命令)
    - [自定义服务配置](#自定义服务配置)
  - [飞行规则](#飞行规则)
    - [查找指定服务信息](#查找指定服务信息)

------

## 命令

```sh
# 脚本注册
systemctl daemon-reload

# 启动
systemctl start *.service
# 停止
systemctl stop *.service
# 重启
systemctl reload *.service

# 注册开机自启动
systemctl enable *.service
```

### 自定义服务配置

```sh
[Unit]
Description=cem-base service

[Service]
Type=forking
ExecStart=/data/www/cem-base/restart_all.sh
ExecStop=/data/www/cem-base/kill_all.sh
ExecReload=/data/www/cem-base/restart_all.sh
User=www
Group=www

[Install]
WantedBy=multi-user.target
```

## 飞行规则

### 查找指定服务信息

以查询clickhouse相关服务为示例

```
# 1. 查找已知名称的服务
>> systemctl list-units --type service clickhouse*


UNIT                      LOAD   ACTIVE SUB     DESCRIPTION
clickhouse-server.service loaded active running ClickHouse Server (analytic DBMS for big data)

>> systemctl status clickhouse-server


```