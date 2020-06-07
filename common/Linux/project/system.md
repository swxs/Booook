# system

---

- [system](#system)
  - [命令](#命令)
  - [实例](#实例)

---

## 命令

``` shell
# 脚本注册
systemctl daemon-reload

# 启动
systemctl start cem.service
# 停止
systemctl stop cem.service
# 重启
systemctl reload cem.service

# 注册开机自启动
systemctl enable cem.service
```

## 实例

cem.service

``` shell
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
