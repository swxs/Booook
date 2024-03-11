# 实例

------

- [实例](#实例)
  - [查询分区数据大小](#查询分区数据大小)
  - [查询所有待优化分区，并拼接优化语句](#查询所有待优化分区并拼接优化语句)
  - [删除数据](#删除数据)

------

## 查询分区数据大小

```sql
SELECT
    partition AS `分区`,
    sum(rows) AS `总行数`,
    formatReadableSize(sum(data_uncompressed_bytes)) AS `原始大小`,
    formatReadableSize(sum(data_compressed_bytes)) AS `压缩大小`,
    round((sum(data_compressed_bytes) / sum(data_uncompressed_bytes)) * 100, 0) AS `压缩率`
FROM system.parts
WHERE table = ''
GROUP BY partition;
```

## 查询所有待优化分区，并拼接优化语句

```sql
SELECT
    concat('OPTIMIZE TABLE ', database, '.', table, ' on cluster xm_replica PARTITION ', partition , ' FINAL;') as cmd 
FROM system.parts 
WHERE active and (engine like '%ReplacingMergeTree' or  engine like '%CollapsingMergeTree') and database ='xm' and table  ='survey_schema' 
GROUP BY database,table,partition 
HAVING count()>1;
```

## 删除数据

``` sql
DELETE FROM xm_data WHERE data_id = '652499a01a88aa00203d88a4';
```
