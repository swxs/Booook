# 安装

------

- [安装](#安装)
  - [windows安装](#windows安装)
    - [下载](#下载)
    - [安装 & 运行](#安装--运行)
    - [连接](#连接)

------

## windows安装

### 下载

[Memcached-win64.zip](https://pan.baidu.com/s/1hqEu6ag)

### 安装 & 运行

``` bash
memcached.exe -d install
memcached.exe -d start
```

### 连接

1. 使用各类客户端连接
2. 使用 telnet （在 中设置开启）

> ![telnet.png](./telnet.png)

``` bash
telnet 127.0.0.1 11211
```
