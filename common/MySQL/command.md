# 命令

------

- [命令](#命令)
  - [库操作](#库操作)
  - [表操作](#表操作)
  - [字段操作](#字段操作)
  - [索引操作](#索引操作)
  - [配置操作](#配置操作)
  - [数据操作](#数据操作)

------

## 库操作

- 建数据库
``` sql
CREATE DATABASE <database-name>
```

- 删数据库
``` sql
DROP DATABASE <database-name>
```

- 备份
``` sql
USE master
EXEC sp_addumpdevice 'disk', 'testBack', 'c:\mssql7backup\MyNwind_1.dat'
BACKUP DATABASE <database-name> TO testBack
```

## 表操作

- 建数据表
``` sql
CREATE TABLE <table-name>
(
    col1 type1 [not null] [primary key],
    col2 type2 [not null],
    ..
)
```

- 基于旧表建新表
``` sql
CREATE TABLE <new-table-name> 
like <old-table-name>
```

- 基于旧表建新表, 只同步表结构
``` sql
CREATE TABLE <new-table-name> AS 
    SELECT 
        col1,
        col2,
        … 
    FROM <old-table-name> 
definition only
```

- 删数据表
```
DROP TABLE <table-name>
```

## 字段操作

- 字段级别操作
``` sql
ALTER TABLE <table-name> ADD column col type
```

添加主键
``` sql
Alter TABLE tabname add primary key(col)
```

删除主键
``` sql
Alter TABLE tabname drop primary key(col)
```

## 索引操作

- 创建索引
``` sql
CREATE [unique] index idxname on tabname(col….)
```

- 删除索引
``` sql
DROP index idxname
```

## 配置操作

- 数据库字段编码修改
``` sql
ALTER TABLE <table-name> CONVERT TO CHARACTER SET utf8 COLLATE 'utf8_unicode_ci';
```

## 数据操作

- 选择
``` sql
select * from table1 where
```

- 插入
``` sql
insert into table1(field1,field2) values(value1,value2)
```

- 删除
``` sql
delete from table1 where
```

- 更新
``` sql
update table1 set field1=value1 where
```

- 查找
``` sql
select * from table1 where field1 like ’%value1%’
```
