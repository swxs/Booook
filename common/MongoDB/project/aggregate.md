# 聚合查询

---

- [聚合查询](#聚合查询)
  - [常用聚合写法](#常用聚合写法)

---

## 常用聚合写法

BI实现思路， 实现了多维度交叉， 度量的总计， 计数， 去重计数， 平均

``` mongo
db.getCollection('USER_GROUP').aggregate([
{
    '$match': {
        "project_id": "5cdccfa1b047aa1f77f8703b"
    }
},
{
    '$addFields': {
        "All": "All"
    }
},
{
    '$group': {
        "_id": {
            "column_id_4": "$groupLevelID",
            "column_id_5": "$email"
        }, 
        "column_id_1": {
            "$sum": "$seq"
        },
        "column_id_2": {
            "$sum": 1
        },
        "column_id_3": {
            "$addToSet": "$groupType"
        },
        "column_id_6": {
            "$avg": "$seq"
        }
    }
}, {
    '$project': {
        "_id": 0,
        "column_id_1": 1,
        "column_id_2": 1,
        "column_id_3": {"$size": "$column_id_3"},
        "column_id_4": "$_id.column_id_4",
        "column_id_5": "$_id.column_id_5",
        "column_id_6": 1
    }
}
])
```
