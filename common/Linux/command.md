# 命令

------

- [命令](#命令)
  - [系统日志](#系统日志)
  - [历史错误处理](#历史错误处理)
  - [配置用户](#配置用户)
  - [lftp](#lftp)

------

## 系统日志

系统日志是由一个名为syslog的服务管理的，如以下日志文件都是由syslog日志服务驱动的

|url|描述|
|:--|:--|
|/var/log/boot.log|录了系统在引导过程中发生的事件，就是Linux系统开机自检过程显示的信息|
|/var/log/lastlog |记录最后一次用户成功登陆的时间、登陆IP等信息|
|/var/log/messages |记录Linux操作系统常见的系统和服务错误信息|
|/var/log/secure |Linux系统安全日志，记录用户和工作组变坏情况、用户登陆认证情况|
|/var/log/btmp |记录Linux登陆失败的用户、时间以及远程IP地址|
|/var/log/syslog|只记录警告信息，常常是系统出问题的信息，使用lastlog查看|
|/var/log/wtmp|该日志文件永久记录每个用户登录、注销及系统的启动、停机的事件，使用last命令查看|
|/var/run/utmp|该日志文件记录有关当前登录的每个用户的信息。如 who、w、users、finger等就需要访问这个文件|

## 历史错误处理

``` sh
# $'\r': command not found
vi
:set ff-unix
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

## lftp

``` sh
# SYNTAX
#    lftp [-d] [-e cmd] [-p port] [-u user[,pass]] [site]
#    lftp -f script_file
#    lftp -c commands
#    lftp --version
#    lftp --help

lftp -p 990 -u ftpqsc,"Password@qsc" ftps://host

set ftp:ssl-auth TLS 
set ftp:ssl-force true 
set ftp:ssl-protect-list yes 
set ftp:ssl-protect-data yes 
set ftp:ssl-protect-fxp yes 
set ftp:passive-mode off
set ssl:verify-certificate no  

mput filename;
```
