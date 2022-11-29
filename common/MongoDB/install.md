# 安装

------

- [安装](#安装)
  - [docker](#docker)
  - [window](#window)
    - [下载安装](#下载安装)
    - [配置启动任务](#配置启动任务)
  - [linux](#linux)
    - [下载安装](#下载安装-1)
    - [yum安装](#yum安装)
      - [3.6](#36)
      - [4.0](#40)
    - [配置](#配置)
    - [运行](#运行)

------

## docker

[https://hub.docker.com/_/mongo/](https://hub.docker.com/_/mongo/)

`docker pull mongo`

``` sh
docker volume create --name mongodb
docker volume create --name mongoconfigdb
docker run --name mongod -v mongodb:/data/db -v mongoconfigdb:/data/configdb -p 27017:27017 -d mongo
```

## window

### 下载安装

[https://www.mongodb.com/try/download/community](https://www.mongodb.com/try/download/community)

### 配置启动任务

``` sh
.\mongod.exe --config .\mongod.conf --directoryperdb --serviceName Mongodb --install
```

``` sh
#mongod.conf
dbpath=F:\mongodb\db
logpath=F:\mongodb\logs\mongod.log

logappend=true
journal=true
quiet=true

bind_ip=127.0.0.1
port=27017
```

如果碰到`错误100`, 尝试删除`db`文件夹下的`mongod.lock`与`storage.bson`

## linux

### 下载安装

1. 下载址定版本并解压

``` sh
wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.2.17.tgz

tar -zxvf mongodb-linux-x86_64-3.2.17.tgz -C /usr/local/

cd /usr/local/

mv mongodb-linux-x86_64-3.2.17 mongodb3.2.17
```

2. 配置

``` sh
cat >> /etc/profile << EOF
export PATH=$PATH:/usr/local/mongodb3.2.17/bin
EOF

source /etc/profile
```

### yum安装

#### 3.6

``` sh
cd /etc/yum.repos.d
cat >> mongodb-org-3.6.repo << EOF
[mongodb-org-3.6]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/7Server/mongodb-org/3.6/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.6.asc
EOF

yum install -y mongodb-org
```

#### 4.0

``` shell
cd /etc/yum.repos.d
cat >> mongodb-org-4.0.repo << EOF
[mongodb-org-4.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/7Server/mongodb-org/4.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc
EOF

yum install -y mongodb-org
```

### 配置

vim /etc/mongod.conf

``` sh
# mongod.conf

# for documentation of all options, see:
#   http://docs.mongodb.org/manual/reference/configuration-options/

# where to write logging data.
systemLog:
  destination: file
  logAppend: true
  logRotate: reopen
  path: /var/log/mongodb/mongod.log

# Where and how to store data.
storage:
  dbPath: /var/lib/mongo
  journal:
    enabled: true
  engine: wiredTiger
  mmapv1:
    nsSize: 1024
#  wiredTiger:
  directoryPerDB: true
# how the process runs
processManagement:
  fork: true  # fork and run in background
  pidFilePath: /var/run/mongodb/mongod.pid  # location of pidfile

# network interfaces
net:
  port: 27017
  bindIp: 127.0.0.1,172.16.66.131   # Listen to local interface only, comment to listen on all interfaces.


#security:

#operationProfiling:

#replication:

#sharding:

## Enterprise-Only Options

#auditLog:

#snmp:

```

### 运行

环境:DB1:192.168.200.201

1. 创建数据和日志目录

``` sh
mkdir -p /data/database/mongodb/cemdb
mkdir -p /data/database/mongodb/cemdb_slave
mkdir -p /data/log/mongodb
chmod -R 777 /data/database/mongodb/cemdb
chmod -R 777 /data/database/mongodb/cemdb_slave
chmod -R 777 /data/log/
```

2. 启动mongod服务

``` sh
mongod --dbpath /data/database/mongodb/cemdb --logpath=/data/log/mongodb/cemdb.log --logappend --logRotate reopen
```

Master:

``` sh
numactl --interleave=all /usr/local/mongodb3.2.17/bin/mongod --dbpath=/data/database/mongodb/cemdb --logpath=/data/log/mongodb/cemdb.log --logappend --logRotate reopen --fork --directoryperdb --nssize=1024 --port=27017 --bind_ip=10.183.188.184 --storageEngine=wiredTiger --master
```

Slave:

``` sh
numactl --interleave=all /usr/local/mongodb3.2.17/bin/mongod --dbpath=/data/database/mongodb/cemdb_slave --logpath=/data/log/mongodb/cemdb.log --logappend --logRotate reopen --fork --directoryperdb --nssize=1024 --port=27017 --source=10.183.188.184 --bind_ip=10.183.188.179 --storageEngine=wiredTiger --slave
```

3. 检查状态

netstat -nltp | grep mongod
