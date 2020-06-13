# 命令

---

- [命令](#命令)
  - [mongo导数据](#mongo导数据)
    - [如果版本不一致](#如果版本不一致)

---

## mongo导数据

```
mongodump -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 -o 文件存在路径

mongorestore -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 --drop 文件存在路径

mongoexport -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 -c 表名 -f 字段 -q 条件导出 --csv -o 文件名

mongoimport -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 -c 表名 --upsert 插入或者更新现有数据 --drop 文件名

mongorestore --gzip --archive=dump.gz 库名是 cem_server_vehicel


```

### 如果版本不一致

``` sh
# Mongodump: Unrecognized field 'snapshot'
--forceTableScan
```
