# example

---

- [example](#example)

---

## 挂载硬盘

``` sh
fdisk -l
mkfs.ext4 /dev/sdc
mkdir -p /home/data
mount /dev/sdc  /home/data
```

`vi /etc/fstab`

``` sh
/dev/sdc                /home/data              ext4    defaults        0 0
```

## 配置用户

``` sh
# 配置www用户
groupadd www
useradd --shell /sbin/nologin -g www www
usermod -s /bin/bash www
mkdir -p /data/www
chown www:www /data/www
su www
vim ~/.bashrc
cd /data/www
```

## 修改时间

``` sh
# 修改时间

cp /etc/localtime /etc/localtime.bak
ln -svf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

vim /etc/sysconfig/clock

ZONE="Asia/Shanghai"
UTC=false
ARC=false

ntpdate 0.centos.pool.ntp.org

/etc/init.d/crond restart

date -R
```

## ssh

``` sh
/etc/ssh/sshd_config
```

### ssh免密码登录

``` sh
# 各服务器上生成公钥，私钥，
ssh-keygen -t rsa -P ''

# 将各个服务器上的公钥放到所有服务器
cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys

# 重启ssh服务
systemctl restart sshd.service
```

#### 批量设置

``` sh
# for a in {1, 7}; do $a; done
# 通过循环和scp批量分发文件

for a in 'HOST1' 'HOST2'; do scp /root/.ssh/authorized_keys root@$a:/root/.ssh/authorized_keys; done
```

## iptables

1. 修改/etc/sysconfig/iptables
2. 重运行iptables服务

防火墙开启
vi /usr/local/sbin/firewall

```
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

安全配置
vi /etc/init.d/iptables
```
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



```
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
