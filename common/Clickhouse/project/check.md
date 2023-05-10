# 问题排查

------

- [问题排查](#问题排查)
  - [2023/03/03](#20230303)
    - [clickhouse CPU打满](#clickhouse-cpu打满)
  - [2023/01/28](#20230128)
    - [CK版本升级 21.3 -\> 22.8](#ck版本升级-213---228)
  - [2022/03/07](#20220307)
    - [部分异常及对应配置](#部分异常及对应配置)
  - [2021/06/18](#20210618)
    - [Clickhouse drop table on cluster but not delete on zookeeper](#clickhouse-drop-table-on-cluster-but-not-delete-on-zookeeper)
  - [2021/05/03](#20210503)
    - [时间插入后有偏移](#时间插入后有偏移)

------

## 2023/03/03

### clickhouse CPU打满

查看日志报错
```
2023.03.03 14:30:56.356211 [ 60975 ] {} <Warning> xm.member_schema (ReplicatedMergeTreePartCheckThread): Checking part 202109_1_541_105
2023.03.03 14:30:56.356248 [ 60907 ] {} <Information> xm.member_schema (b9daa48e-ade2-48e0-92cf-248000210ac9): DB::Exception: No active replica has part 202109_1_541_105 or covering part
2023.03.03 14:30:56.356541 [ 60975 ] {} <Warning> xm.member_schema (ReplicatedMergeTreePartCheckThread): Checking if anyone has a part 202109_1_541_105 or covering part.
2023.03.03 14:30:56.357000 [ 60975 ] {} <Information> xm.member_schema (ReplicatedMergeTreePartCheckThread): Found parts with the same min block and with the same max block as the missing part 202109_1_541_105 on replica 1. Hoping that it will eventually appear as a result of a merge. Parts: 202109_1_534_104, 202109_535_541_2
2023.03.03 14:30:56.503491 [ 60981 ] {} <Warning> xm.member_schema (ReplicatedMergeTreePartCheckThread): Checking part 202109_1_541_105
2023.03.03 14:30:56.503518 [ 60917 ] {} <Information> xm.member_schema (b9daa48e-ade2-48e0-92cf-248000210ac9): DB::Exception: No active replica has part 202109_1_541_105 or covering part
2023.03.03 14:30:56.503916 [ 60981 ] {} <Warning> xm.member_schema (ReplicatedMergeTreePartCheckThread): Checking if anyone has a part 202109_1_541_105 or covering part.
2023.03.03 14:30:56.504359 [ 60981 ] {} <Information> xm.member_schema (ReplicatedMergeTreePartCheckThread): Found parts with the same min block and with the same max block as the missing part 202109_1_541_105 on replica 1. Hoping that it will eventually appear as a result of a merge. Parts: 202109_1_534_104, 202109_535_541_2
2023.03.03 14:30:56.863315 [ 60929 ] {} <Debug> DiskLocal: Reserving 1.00 MiB on disk `default`, having unreserved 144.55 GiB.
2023.03.03 14:30:57.013859 [ 60910 ] {} <Information> xm.member_schema (b9daa48e-ade2-48e0-92cf-248000210ac9): DB::Exception: No active replica has part 202109_1_541_105 or covering part
2023.03.03 14:30:57.013923 [ 60996 ] {} <Warning> xm.member_schema (ReplicatedMergeTreePartCheckThread): Checking part 202109_1_541_105
2023.03.03 14:30:57.015119 [ 60996 ] {} <Warning> xm.member_schema (ReplicatedMergeTreePartCheckThread): Checking if anyone has a part 202109_1_541_105 or covering part.
```

应该是停机的时候有写入，数据分片出问题了

```
alter table xm.upload_schema detach partition 76;
alter table xm.upload_schema attach partition 76;

alter table xm.member_schema detach partition '202109';
alter table xm.member_schema attach partition '202109';
```

参考：
- [https://github.com/ClickHouse/ClickHouse/issues/14296](https://github.com/ClickHouse/ClickHouse/issues/14296)

## 2023/01/28

### CK版本升级 21.3 -> 22.8

```
mkdir /opt/clickhouse/22.8.9.24
cd /opt/clickhouse/22.8.9.24
wget https://packages.clickhouse.com/rpm/lts/clickhouse-client-22.8.9.24.x86_64.rpm
wget https://packages.clickhouse.com/rpm/lts/clickhouse-common-static-22.8.9.24.x86_64.rpm
wget https://packages.clickhouse.com/rpm/lts/clickhouse-common-static-dbg-22.8.9.24.x86_64.rpm
wget https://packages.clickhouse.com/rpm/lts/clickhouse-server-22.8.9.24.x86_64.rpm
```

关闭clickhouse服务

```
systemctl stop clickhouse-server.service
```

确定关闭完成，查看服务状态

```
systemctl status clickhouse-server.service
```

升级(运行过程中需要输入default的密码)
```
rpm -Uvh *.rpm
```

重启clickhouse服务
```
systemctl daemon-reload

systemctl start clickhouse-server.service
```

查看服务状态
```
systemctl status clickhouse-server.service
```

## 2022/03/07

### 部分异常及对应配置

`code 62，Max query size exceeded`: 
```xml
<max_query_size>10000000</max_query_size>
```

`Code: 168, AST is too big，Maximum: 50000`: 
```xml
<max_ast_elements>10000000</max_ast_elements>
<max_expanded_ast_elements>10000000</max_expanded_ast_elements>
```

## 2021/06/18

### Clickhouse drop table on cluster but not delete on zookeeper

删除zk中的路径是异步操作，可以调节触发时间，或者进行区分

- use ordinary database instead of atomic. create database ... Engine=Ordinary.
- use uniq ZK path using a new var. {uuid} /clickhouse/tables/{layer}-{shard}-{uuid}/streams.streams_apps_ext_log_test
- reduce database_atomic_delay_before_drop_table_sec = 0; & drop table ... sync

参考：
- [https://github.com/ClickHouse/ClickHouse/issues/18382](https://github.com/ClickHouse/ClickHouse/issues/18382)
- [https://github.com/ClickHouse/ClickHouse/blob/master/tests/config/config.d/database_atomic.xml](https://github.com/ClickHouse/ClickHouse/blob/master/tests/config/config.d/database_atomic.xml)

## 2021/05/03

### 时间插入后有偏移

需要注意
通过插入字符串的方式插入时间字段， CK会根据配置的当前时区、字段配置的时区等信息对字符串做自动转化
通过插入整形时间戳方式插入时间字段，CK会直接存入不做额外处理
