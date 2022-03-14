# 问题排查

------

- [问题排查](#问题排查)
  - [2022/03/07](#20220307)
    - [部分异常及对应配置](#部分异常及对应配置)
  - [2021/06/18](#20210618)
    - [Clickhouse drop table on cluster but not delete on zookeeper](#clickhouse-drop-table-on-cluster-but-not-delete-on-zookeeper)
  - [2021/05/03](#20210503)
    - [时间插入后有偏移](#时间插入后有偏移)

------

## 2022/03/07

### 部分异常及对应配置

`code 62，Max query size exceeded`: 
``` xml
<max_query_size>10000000</max_query_size>
```

`Code: 168, AST is too big，Maximum: 50000`: 
``` xml
<max_ast_elements>10000000</max_ast_elements>
<max_expanded_ast_elements>10000000</max_expanded_ast_elements>
```

## 2021/06/18

### Clickhouse drop table on cluster but not delete on zookeeper

删除zk中的路径是异步操作，可以调节触发时间，或者进行区分

- use ordinary database instead of atomic. create database ... Engine=Ordinary.
- use uniq ZK path using a new var. {uuid} /clickhouse/tables/{layer}-{shard}-{uuid}/streams.streams_apps_ext_log_test
- reduce database_atomic_delay_before_drop_table_sec = 0; & drop table ... sync

- [https://github.com/ClickHouse/ClickHouse/issues/18382](https://github.com/ClickHouse/ClickHouse/issues/18382)
- [https://github.com/ClickHouse/ClickHouse/blob/master/tests/config/config.d/database_atomic.xml](https://github.com/ClickHouse/ClickHouse/blob/master/tests/config/config.d/database_atomic.xml)

## 2021/05/03

### 时间插入后有偏移

需要注意
通过插入字符串的方式插入时间字段， CK会根据配置的当前时区、字段配置的时区等信息对字符串做自动转化
通过插入整形时间戳方式插入时间字段，CK会直接存入不做额外处理
