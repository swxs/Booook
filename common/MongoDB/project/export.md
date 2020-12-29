# 导入导出

------

- [导入导出](#导入导出)
  - [同步整个库](#同步整个库)
    - [特殊功能参数说明](#特殊功能参数说明)
  - [同步指定表](#同步指定表)

------

## 同步整个库

``` sh
mongodump -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 -o 文件存在路径

mongorestore -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 --drop 文件存在路径

mongorestore --gzip --archive=dump.gz 库名是 cem_server_vehicel


```

### 特殊功能参数说明

``` sh
# 如果mongo版本不一致
# Mongodump: Unrecognized field 'snapshot'
--forceTableScan
```

## 同步指定表

``` sh
mongoexport -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 -c 表名 -f 字段 -q 条件导出 --csv -o 文件名

mongoimport -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 -c 表名 --upsert 插入或者更新现有数据 --drop 文件名
```
