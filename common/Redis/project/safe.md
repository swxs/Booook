# 安全设置

------

- [安全设置](#安全设置)
  - [修改配置文件权限](#修改配置文件权限)
  - [修改端口](#修改端口)
  - [指定密码](#指定密码)
  - [限制命令](#限制命令)

------

## 修改配置文件权限

``` sh
chmod 600 /<filepath>/redis.conf
```

## 修改端口

编辑文件redis的配置文件redis.conf，找到包含port的行，将默认的6379修改为自定义的端口号，然后重启redis

## 指定密码

打开redis.conf，找到requirepass所在的地方，修改为指定的密码，密码应符合复杂性要求：

``` sh
1、长度8位以上
2、包含以下四类字符中的三类字符:
英文大写字母(A 到 Z)
英文小写字母(a 到 z)
10 个基本数字(0 到 9)
非字母字符(例如 !、$、%、@、^、&等，#除外)
3、避免使用已公开的弱密码，如：abcd.1234 、admin@123等
```

## 限制命令

修改 redis.conf 文件，禁用部分危险命令， 或改名

``` sh
rename-command FLUSHALL ""
rename-command FLUSHDB  ""
rename-command CONFIG   ""
rename-command KEYS     ""
rename-command SHUTDOWN ""
rename-command DEL ""
rename-command EVAL ""

rename-command FLUSHALL  joYAPNXRPmcarcR4ZDgC
```
