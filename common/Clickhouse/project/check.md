# 问题排查

------

- [问题排查](#问题排查)
  - [2021/0618](#20210618)
    - [Clickhouse drop table on cluster but not delete on zookeeper](#clickhouse-drop-table-on-cluster-but-not-delete-on-zookeeper)

------

## 2021/0618

### Clickhouse drop table on cluster but not delete on zookeeper

删除zk中的路径是异步操作，可以调节触发时间，或者进行区分

- use ordinary database instead of atomic. create database ... Engine=Ordinary.
- use uniq ZK path using a new var. {uuid} /clickhouse/tables/{layer}-{shard}-{uuid}/streams.streams_apps_ext_log_test
- reduce database_atomic_delay_before_drop_table_sec = 0; & drop table ... sync

- [https://github.com/ClickHouse/ClickHouse/issues/18382](https://github.com/ClickHouse/ClickHouse/issues/18382)
- [https://github.com/ClickHouse/ClickHouse/blob/master/tests/config/config.d/database_atomic.xml](https://github.com/ClickHouse/ClickHouse/blob/master/tests/config/config.d/database_atomic.xml)