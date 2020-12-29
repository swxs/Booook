# 优化

------

- [优化](#优化)
  - [慢日志](#慢日志)
    - [通过命令行配置](#通过命令行配置)
    - [通过ini文件配置](#通过ini文件配置)
    - [通过yaml文件配置](#通过yaml文件配置)
  - [慢查询常用命令](#慢查询常用命令)
  - [MongoDB慢查询日志解析](#mongodb慢查询日志解析)

------

## 慢日志

### 通过命令行配置
``` sh
# 查询慢查询级别和其它信息
db.getProfilingStatus()
# 仅返回慢查询级别
db.getProfilingLevel()
```

``` sh
# 禁用慢查询
db.setProfilingLevel(0)
#  指定数据库，并指定阈值慢查询 ，超过20毫秒的查询被记录
use testdb.setProfilingLevel(1, { slowms: 20 })
#  随机采集慢查询的百分比值，sampleRate 值默认为1，表示都采集，0.42 表示采集42%的内容。
db.setProfilingLevel(1, { sampleRate: 0.42 })
#  为所有数据库开启慢查询记录
db.setProfilingLevel(2)
```

### 通过ini文件配置
``` ini
profile = 1
slowms = 300
```

### 通过yaml文件配置
``` yaml
operationProfiling:  
    mode:<string># 默认为 off，可选值 off、slowOp(对应上面的等级 1)、all(对应上面的等级 2)   
    slowOpThresholdMs:<int># 阈值，默认值为100，单位毫秒  
    slowOpSampleRate:<double>#  随机采集慢查询的百分比值，sampleRate 值默认为1，表示都采集，0.42 表示采集42%的内容
```

## 慢查询常用命令

``` sh
# 查询最近的10个慢查询日志
db.system.profile.find().limit(10).sort( { ts : -1 } ).pretty()

# 查询除命令类型为 ‘command’ 的日志
db.system.profile.find( { op: { $ne : 'command' } } ).pretty()

# 查询数据库为 mydb 集合为 test 的 日志
db.system.profile.find( { ns : 'mydb.test' } ).pretty()

# 查询 低于 5毫秒的日志
db.system.profile.find( { millis : { $gt : 5 } } ).pretty()

# 查询时间从 2012-12-09 3点整到 2012-12-09 3点40分之间的日志
db.system.profile.find({
    ts : {
        $gt: new ISODate("2012-12-09T03:00:00Z"),
        $lt: new ISODate("2012-12-09T03:40:00Z")
    }
}).pretty()
```

## MongoDB慢查询日志解析

``` sh
{
  "op" : "query",  # 操作类型，值可为command、count、distinct、geoNear、getMore、group、insert、mapReduce、query、remove、update
  "ns" : "test.report", # 操作的数据库和集合
  "command" : {    # 命令
      "find" : "report",  # 操作的集合
      "filter" : { "a" : { "$lte" : 500 } }, # 查询条件
      "lsid" : {   
        "id" : UUID("5ccd5b81-b023-41f3-8959-bf99ed696ce9") #用户的会话id
      },
      "$db" : "test"  # 操作的数据库
  },
  "cursorid" : 33629063128,  # query和getmore 的游标id
  "keysExamined" : 101, # MongoDB为执行操作而扫描的索引键的数量
  "docsExamined" : 101, # MongoDB为了执行操作而扫描的集合中的文档数。
  "numYield" : 2, # 让步次数，操作时让其他的操作完成的次数。
  "nreturned" : 101, # 操作返回的文档数
  "queryHash" : "811451DD", # 查询的hash值
  "planCacheKey" : "759981BA",
  "locks" : {  # 操作期间的锁和所的类型
      "Global" : {  #表示全局锁定
        "acquireCount" : { #锁定的次数
            "r" : NumberLong(3)  # 表示共享锁
        }
      },
      "Database" : {  # 数据库锁
        "acquireCount" : { "r" : NumberLong(1) },
        "acquireWaitCount" : { "r" : NumberLong(1) },
        "timeAcquiringMicros" : { "r" : NumberLong(69130694) }
      },
      "Collection" : {  # 集合锁
        "acquireCount" : { "r" : NumberLong(1) }
      }
  },
  "storage" : { # 储存
      "data" : {
        "bytesRead" : NumberLong(14736), #操作 从磁盘放到缓存的数据的字节数
        "timeReadingMicros" : NumberLong(17) # 操作 花费在磁盘读取的时间，以微妙为单位
      }
  },
  "responseLength" : 1305014, # 操作返回结果的文档长度，单位为字节
  "protocol" : "op_msg", # 消息的协议
  "millis" : 69132, # 从 MongoDB 操作开始到结束耗费的时间
  "planSummary" : "IXSCAN { a: 1, _id: -1 }",  # 摘要
  "execStats" : {  # 操作执行过程中的详细信息
      "stage" : "FETCH", # 操作形式 ，COLLSCAN 用于集合扫描，IXSCAN 用于扫描索引键，FETCH 用于检索文档
      "nReturned" : 101, # 返回的文档数量
      "executionTimeMillisEstimate" : 0,
      "works" : 101,
      "advanced" : 101,
      "needTime" : 0,
      "needYield" : 0,
      "saveState" : 3,
      "restoreState" : 2,
      "isEOF" : 0,
      "invalidates" : 0,
      "docsExamined" : 101,
      "alreadyHasObj" : 0,
      "inputStage" : {
        ...
      }
  },
  "ts" : ISODate("2019-01-14T16:57:33.450Z"), #操作的时间戳
  "client" : "127.0.0.1",  # 客户端的ip
  "appName" : "MongoDB Shell", #客户端应用标识符
  "allUsers" : [
      {
        "user" : "someuser", # 用户
        "db" : "admin"  # 验证的数据库
      }
  ],
  "user" : "someuser@admin"  # 经过验证的用户
}
```
