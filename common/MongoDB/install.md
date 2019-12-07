# install

---

- [install](#install)
  - [下载安装](#%e4%b8%8b%e8%bd%bd%e5%ae%89%e8%a3%85)
      - [yum安装](#yum%e5%ae%89%e8%a3%85)
        - [3.6](#36)
        - [4.0](#40)
    - [配置](#%e9%85%8d%e7%bd%ae)
      - [运行](#%e8%bf%90%e8%a1%8c)

---

## 下载安装

1. 下载址定版本并解压
```
wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.2.17.tgz

tar -zxvf mongodb-linux-x86_64-3.2.17.tgz -C /usr/local/

cd /usr/local/

mv mongodb-linux-x86_64-3.2.17 mongodb3.2.17
```

2. 配置
```
cat >> /etc/profile << EOF
export PATH=$PATH:/usr/local/mongodb3.2.17/bin
EOF

source /etc/profile
```

#### yum安装
##### 3.6
```
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

##### 4.0
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

```
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

#### 运行

环境:DB1:192.168.200.201

1、创建数据和日志目录
```
mkdir -p /data/database/mongodb/cemdb
mkdir -p /data/database/mongodb/cemdb_slave
mkdir -p /data/log/mongodb
chmod -R 777 /data/database/mongodb/cemdb
chmod -R 777 /data/database/mongodb/cemdb_slave
chmod -R 777 /data/log/
```

2、启动mongod服务
```
mongod --dbpath /data/database/mongodb/cemdb --logpath=/data/log/mongodb/cemdb.log --logappend --logRotate reopen
```

Master:
```
numactl --interleave=all /usr/local/mongodb3.2.17/bin/mongod --dbpath=/data/database/mongodb/cemdb --logpath=/data/log/mongodb/cemdb.log --logappend --logRotate reopen --fork --directoryperdb --nssize=1024 --port=27017 --bind_ip=10.183.188.184 --storageEngine=wiredTiger --master
```
Slave:
```
numactl --interleave=all /usr/local/mongodb3.2.17/bin/mongod --dbpath=/data/database/mongodb/cemdb_slave --logpath=/data/log/mongodb/cemdb.log --logappend --logRotate reopen --fork --directoryperdb --nssize=1024 --port=27017 --source=10.183.188.184 --bind_ip=10.183.188.179 --storageEngine=wiredTiger --slave
```

3、检查状态
netstat -nltp |grep mongod
