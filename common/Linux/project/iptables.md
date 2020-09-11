# iptables

------

- [iptables](#iptables)
  - [流程](#流程)
  - [安全配置](#安全配置)

------

## 流程

1. 修改/etc/sysconfig/iptables
2. 重运行iptables服务

防火墙开启
vi /usr/local/sbin/firewall

``` sh
#!/bin/bash

iptables -P INPUT ACCEPT
iptables -F
iptables -X
iptables -Z
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p icmp -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -P INPUT DROP
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

iptables -t nat -F
iptables -t nat -X
iptables -t nat -Z
iptables -t nat -P PREROUTING ACCEPT
iptables -t nat -P POSTROUTING ACCEPT
iptables -t nat -P OUTPUT ACCEPT

service iptables save
service iptables restart
chkconfig iptables on
```

## 安全配置

vi /etc/init.d/iptables

``` sh
（set_policy() {    段）
            security)
                $IPTABLES -t filter -P INPUT $policy \
                    && $IPTABLES -t filter -P OUTPUT $policy \
                    && $IPTABLES -t filter -P FORWARD $policy \
                    || let ret+=1
                ;;
```

firewall-cmd --add-port=5000/tcp --zone=public --permanent
firewall-cmd --reload
配置logrotate

``` sh
/data/log/nginx/*.log
{
    daily
    rotate 365
    compress
    dateext
    missingok
    notifempty
    sharedscripts
    postrotate
        /bin/kill -USR1 `cat /usr/local/nginx/logs/nginx.pid 2>/dev/null` 2>/dev/null || ture
    endscript
}
```

``` sh
service iptables restart
```
