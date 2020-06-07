# 实例

---

- [实例](#实例)
  - [强制关闭进程](#强制关闭进程)
  - [删除文件](#删除文件)
  - [查询访问最频繁的URL](#查询访问最频繁的url)
  - [查询访问最频繁的IP](#查询访问最频繁的ip)
  - [DNS链路](#dns链路)
  - [修改时间](#修改时间)
  - [ssh免密码登录](#ssh免密码登录)
  - [挂载硬盘](#挂载硬盘)
  - [查看CPU信息（型号）](#查看cpu信息型号)
    - [查看信息](#查看信息)
  - [统计PV、UV](#统计pvuv)

---

## 强制关闭进程

``` sh
ps aux|grep $2|grep -v grep|awk '{print $2}'|xargs kill -9
```

## 删除文件

``` sh
# 保留指定数量的文件
TOTAL_COUNT=`ls|wc -l`
LEFT_COUNT=20
OLD_VERSION=`ll -rt | head -n $[$TOTAL_COUNT-$LEFT_COUNT]`
rm -rf $OLD_VERSION

# 删除7天前的文件
find /mnt/tmp_bi/ -type f -mtime +7 -exec rm -f {} \;

ll | awk '{if($7 < 20) print $9}' | xargs rm -f

find . -name '*.pyc' -type f -print -exec rm -rf {} \;

UV: awk '{print $1}'  1.log|sort | uniq -c |wc -l
PV: awk '{print $7}' 1.log|wc -l
```

## 查询访问最频繁的URL

``` sh
awk '{print $7}' access.log|sort | uniq -c |sort -n -k 1 -r|more
```

## 查询访问最频繁的IP

``` sh
awk '{print $1}' access.log|sort | uniq -c |sort -n -k 1 -r|more
```

## DNS链路

``` sh
#! /bin/bash
set -x
set -e

dig www.baidu.com
dig +short www.baidu.com
dig +trace www.baidu.com
dig -x www.baidu.com
dig ns com

host www.baidu.com
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

## ssh免密码登录

``` sh
# 各服务器上生成公钥，私钥，
ssh-keygen -t rsa -P ''

# 将各个服务器上的公钥放到所有服务器
cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys

# 重启ssh服务
systemctl restart sshd.service
```

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

## 查看CPU信息（型号）

``` sh
cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c
cat /proc/cpuinfo | grep physical | uniq -c

getconf LONG_BIT
cat /proc/cpuinfo | grep flags | grep ' lm ' | wc -l

# 再完整看cpu详细信息, 不过大部分我们都不关心而已.
dmidecode | grep 'Processor Information'

# 查看内 存信息
cat /proc/meminfo

# 查看当前操作系统内核信息
uname -a

# 查看当前操作系统发行版信息
cat /etc/issue

Centos 版本
rpm -q centos-release

Redhat 版本
rpm -q redhat-release

# 查看机器型号
dmidecode | grep "Product Name"  

# 查看网卡信息
dmesg | grep -i eth

dmesg|grep mongo
```

### 查看信息

系统

``` sh
# uname -a               # 查看内核/操作系统/CPU信息
# head -n 1 /etc/issue   # 查看操作系统版本
# cat /proc/cpuinfo      # 查看CPU信息
# hostname               # 查看计算机名
# lspci -tv              # 列出所有PCI设备
# lsusb -tv              # 列出所有USB设备
# lsmod                  # 列出加载的内核模块
# env                    # 查看环境变量
```

资源

``` sh
# free -m                # 查看内存使用量和交换区使用量
# df -h                  # 查看各分区使用情况
# du -sh <目录名>        # 查看指定目录的大小
# grep MemTotal /proc/meminfo   # 查看内存总量
# grep MemFree /proc/meminfo    # 查看空闲内存量
# uptime                 # 查看系统运行时间、用户数、负载
# cat /proc/loadavg      # 查看系统负载
```

磁盘和分区

``` sh
# mount | column -t      # 查看挂接的分区状态
# fdisk -l               # 查看所有分区
# swapon -s              # 查看所有交换分区
# hdparm -i /dev/hda     # 查看磁盘参数(仅适用于IDE设备)
# dmesg | grep IDE       # 查看启动时IDE设备检测状况
```

网络

``` sh
# ifconfig               # 查看所有网络接口的属性
# iptables -L            # 查看防火墙设置
# route -n               # 查看路由表
# netstat -lntp          # 查看所有监听端口
# netstat -antp          # 查看所有已经建立的连接
# netstat -s             # 查看网络统计信息
```

进程

``` sh
# ps -ef                 # 查看所有进程
# top                    # 实时显示进程状态
```

用户

``` sh
# w                      # 查看活动用户
# id <用户名>            # 查看指定用户信息
# last                   # 查看用户登录日志
# cut -d: -f1 /etc/passwd   # 查看系统所有用户
# cut -d: -f1 /etc/group    # 查看系统所有组
# crontab -l             # 查看当前用户的计划任务
```

服务

``` sh
# chkconfig --list       # 列出所有系统服务
# chkconfig --list | grep on    # 列出所有启动的系统服务
```

程序

``` sh
# rpm -qa                # 查看所有安装的软件包
```

## 统计PV、UV

``` sh
pv：cat /usr/local/nginx/logs/access.log| sed -n /`date "+%d\/%b\/%Y"`/p |awk '{print $7}' |sort|wc -l
uv：cat /usr/local/nginx/logs/access.log| sed -n /`date "+%d\/%b\/%Y"`/p |awk '{print $1}' |sort|uniq -c |wc -l

grep modify survey.mcd.com.cn_access.log >1.log
cat 1.log|wc -l

tail -f survey.mcd.com.cn_access.log
tail -f survey.mcd.com.cn_access.log | grep create
```
