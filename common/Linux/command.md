# 命令

------

- [命令](#命令)
  - [系统日志](#系统日志)
  - [查看信息](#查看信息)
    - [系统资源](#系统资源)
    - [磁盘和分区](#磁盘和分区)
    - [网络](#网络)
    - [进程](#进程)
    - [用户](#用户)
    - [服务](#服务)
    - [程序](#程序)
  - [配置用户](#配置用户)
  - [挂载硬盘](#挂载硬盘)
  - [删除文件](#删除文件)
  - [修改时间](#修改时间)
  - [DNS链路](#dns链路)
  - [任务调度](#任务调度)

------

## 系统日志

系统日志是由一个名为syslog的服务管理的，如以下日志文件都是由syslog日志服务驱动的

| url               | 描述                                                                                     |
| :---------------- | :--------------------------------------------------------------------------------------- |
| /var/log/boot.log | 录了系统在引导过程中发生的事件，就是Linux系统开机自检过程显示的信息                      |
| /var/log/lastlog  | 记录最后一次用户成功登陆的时间、登陆IP等信息                                             |
| /var/log/messages | 记录Linux操作系统常见的系统和服务错误信息                                                |
| /var/log/secure   | Linux系统安全日志，记录用户和工作组变坏情况、用户登陆认证情况                            |
| /var/log/btmp     | 记录Linux登陆失败的用户、时间以及远程IP地址                                              |
| /var/log/syslog   | 只记录警告信息，常常是系统出问题的信息，使用lastlog查看                                  |
| /var/log/wtmp     | 该日志文件永久记录每个用户登录、注销及系统的启动、停机的事件，使用last命令查看           |
| /var/run/utmp     | 该日志文件记录有关当前登录的每个用户的信息。如 who、w、users、finger等就需要访问这个文件 |

## 查看信息

### 系统资源

``` sh
uname -a               # 查看内核/操作系统/CPU信息
head -n 1 /etc/issue   # 查看操作系统版本
rpm -q centos-release  # Centos 版本
rpm -q redhat-release  # Redhat 版本
cat /proc/version      # Linux内核版本
cat /proc/cpuinfo      # 查看CPU信息
cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c
cat /proc/cpuinfo | grep physical | uniq -c
dmidecode | grep 'Processor Information' # 完整查看cpu详细信息
dmidecode | grep "Product Name"   # 查看机器型号
hostname               # 查看计算机名
lspci -tv              # 列出所有PCI设备
lsusb -tv              # 列出所有USB设备
lsmod                  # 列出加载的内核模块
env                    # 查看环境变量
free -m                # 查看内存使用量和交换区使用量
df -h                  # 查看各分区使用情况
du -sh <目录名>        # 查看指定目录的大小
cat /proc/meminfo      # 查看内存信息
grep MemTotal /proc/meminfo   # 查看内存总量
grep MemFree /proc/meminfo    # 查看空闲内存量
uptime                 # 查看系统运行时间、用户数、负载
cat /proc/loadavg      # 查看系统负载
```

### 磁盘和分区

``` sh
mount | column -t      # 查看挂接的分区状态
fdisk -l               # 查看所有分区
swapon -s              # 查看所有交换分区
hdparm -i /dev/hda     # 查看磁盘参数(仅适用于IDE设备)
dmesg | grep IDE       # 查看启动时IDE设备检测状况
```

### 网络

``` sh
dmesg | grep -i eth    # 查看网卡信息
ifconfig               # 查看所有网络接口的属性
iptables -L            # 查看防火墙设置
route -n               # 查看路由表
netstat -lntp          # 查看所有监听端口
netstat -antp          # 查看所有已经建立的连接
netstat -s             # 查看网络统计信息
awk '{print $7}' access.log|sort | uniq -c |sort -n -k 1 -r|more  ## 查询访问最频繁的URL
awk '{print $1}' access.log|sort | uniq -c |sort -n -k 1 -r|more  ## ## 查询访问最频繁的IP
```

### 进程

``` sh
ps -ef                 # 查看所有进程
top                    # 实时显示进程状态
```

### 用户

``` sh
w                      # 查看活动用户
id <用户名>            # 查看指定用户信息
last                   # 查看用户登录日志
cut -d: -f1 /etc/passwd   # 查看系统所有用户
cut -d: -f1 /etc/group    # 查看系统所有组
crontab -l             # 查看当前用户的计划任务
```

### 服务

``` sh
chkconfig --list       # 列出所有系统服务
chkconfig --list | grep on    # 列出所有启动的系统服务
```

### 程序

``` sh
rpm -qa                # 查看所有安装的软件包
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

## 任务调度

``` sh
# 查看任务
jobs -l
ps aux

# 任务前后台切换
fg %<task_id>
bg %<task_id>

# 防止任务在退出命令行时被自动kill
nohup <任务> <2>&1> &
disown -h %<task_id>

# 停止进程
kill -9 
```
