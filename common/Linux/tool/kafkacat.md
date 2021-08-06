# kafkacat

------

- [kafkacat](#kafkacat)
  - [安装](#安装)
  - [常用命令](#常用命令)
    - [查询信息列表](#查询信息列表)
    - [起一个消费端](#起一个消费端)
    - [起一个发送端](#起一个发送端)
  - [源码](#源码)

------

## 安装

``` sh
apt-get install kafkacat
```

## 常用命令

### 查询信息列表

``` sh
kafkacat -b cdh-worker001:9092 -L
```

### 起一个消费端

``` sh
kafkacat -C -b cdh-worker001:9092 -t [topic]
```

### 起一个发送端

``` sh
kafkacat -P -b cdh-worker001:9092 -t [topic]
```

## 源码

[https://github.com/edenhill/kafkacat](https://github.com/edenhill/kafkacat)
