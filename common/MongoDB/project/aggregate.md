# 聚合查询

---

- [聚合查询](#聚合查询)
  - [常用聚合写法](#常用聚合写法)
  - [查询并修改](#查询并修改)
  - [查询并修改2](#查询并修改2)
  - [关联查询](#关联查询)
  - [多层关联查询](#多层关联查询)
  - [多层关联查询2](#多层关联查询2)
  - [分组后按数量排序](#分组后按数量排序)
  - [统计数量分段](#统计数量分段)

---

## 常用聚合写法

BI实现思路， 实现了多维度交叉， 度量的总计， 计数， 去重计数， 平均

``` sh
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

## 查询并修改

``` sh
db.DELIVER_DELIVER。find().forEach(function(item){db.getCollection('DELIVER_DELIVER').update({"_id": item._id},{$set:{"name": item.code}})})
```

## 查询并修改2

``` sh
db.BI_COLUMN.aggregate([
    {
        "$lookup": {
            from: 'BI_WORKTABLE',
            localField: 'worktable_id',
            foreignField: "_id",
            as: "worktable_doc"
        }
    }, {
        "$unwind": {
            path: "$worktable_doc",
            preserveNullAndEmptyArrays: true
        }
    }]
).forEach(
    function(item){
        if(item.worktable_doc) {
            db.BI_COLUMN.update(
                {
                    "_id": item._id
                },
                {
                    $set: {
                        "orgID": item.worktable_doc.orgID
                    }
                },
                false,
                true
            )
        }
    }
)
```

## 关联查询

``` sh
db.getCollection('BI_COLUMN').aggregate([
    {
        $lookup: {
            from: "BI_WORKTABLE",
            let: { "worktable_id": "$worktable_id" },
            "pipeline": [
                {
                    $match: {
                        $expr: {
                            $eq: ["$_id", "$$worktable_id"]
                        }
                    }
                },
            ],
            as: "question_list"
        }
    }
])
```

## 多层关联查询

``` sh
db.getCollection('DELIVER_SMSTEMPLATE').aggregate([
    {
        $lookup: {
            from: "DELIVER_SMSDELIVER",
            let: { "template_id": "$_id" },
            pipeline: [
                {
                    $match: {
                        $expr: {
                            $eq: ["$sms_template_id", "$$template_id"]
                        }
                    }
                },
                {
                    $lookup: {
                        from: "DELIVER_SMSRECORD",
                        let: {
                            "deliver_id": "$_id"
                        },
                        pipeline: [
                            {
                                $match: {
                                    $expr: {
                                        $eq: ["$sms_deliver_id", "$$deliver_id"]
                                    }
                                }
                            }
                        ],          
                        as: "record_list"
                    }
                }
            ],
            as: "deliver_list"
        }
    }
])
```

## 多层关联查询2

``` sh
db.getCollection('BI_COLUMN').aggregate([
    {
        $lookup: {
            from: "BI_WORKTABLE",
            localField: "worktable_id",
            foreignField: "_id",
            as: "worktable_docs"
        }
    },
    {
        $addFields: {
            datasource_id: "$worktable_docs.datasource_id"
        }
    },
    {
        $lookup: {
            from: "BI_DATASOURCE",
            localField: "worktable_docs.datasource_id",
            foreignField: "_id",
            as: "datasource_docs"
        }
    }
])
```

## 分组后按数量排序

``` sh
db.getCollection('BI_COLUMN').aggregate([
    {
        $group: {
            _id: {
                "worktable": "$worktable_id"
            },
            "number": {
                "$sum": 1
            }
        }
    }, {
        $project: {
            "_id": 1,   
            "number": 1,
        }
    }, {
        $sort: {
            number: -1
        }
    }
])
```

## 统计数量分段

``` sh
db.getCollection('BI_COLUMN').aggregate([
    {
        $group: {
            _id: {
                "worktable": "$worktable_id"
            },
            "number": {
                "$sum": 1
            }
        }
    }, {
        $project: {
            "_id": 0,
            "number": 1,
            "steps": {
                "$cond": {
                    "if": {
                        "$lt": ['$number', 100]
                    },
                    "then": "<100",
                    "else": {
                        "$cond": {
                            "if": {
                                "$and": [{
                                    "$gte": ["$number", 100]
                                }, {
                                    "$lt": ["$number", 150]
                                }]
                            },
                            "then": "100~150",
                            "else": {
                                "$cond": {
                                    "if": {
                                        "$and": [{
                                            "$gte": ["$number", 150]
                                        }, {
                                            "$lte": ["$number", 200]
                                        }]
                                    },
                                    "then": "150~200",
                                    "else": {
                                        "$cond": {
                                            "if": {
                                                "$and": [{
                                                    "$gte": ["$number", 200]
                                                }, {
                                                    "$lte": ["$number", 300]
                                                }]
                                            },
                                            "then": "200~300",
                                            "else": ">300"
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

        }
    }, {
        $group: {
            _id: {
                "steps": "$steps"
            },
            "stepnumber": {
                "$sum": 1
            }
        }
    }
])
```
