# 聚合查询

------

- [聚合查询](#聚合查询)
  - [MapReduce](#mapreduce)
  - [常用聚合写法](#常用聚合写法)
  - [查询并修改](#查询并修改)
  - [查询并修改2](#查询并修改2)
  - [关联查询](#关联查询)
  - [多层关联查询](#多层关联查询)
  - [多层关联查询2](#多层关联查询2)
  - [分组后按数量排序](#分组后按数量排序)
  - [统计数量分段](#统计数量分段)

------


## MapReduce

``` text
EX1
    var mapFunction1 = function() { emit(this.cust_id, this.price); };
    var reduceFunction1 = function(keyCustId, valuesPrices) { return Array.sum(valuesPrices); };
    db.orders.mapReduce( mapFunction1, reduceFunction1,  { out: "map_reduce_example" } )
EX2
    var map = function() {for (var key in this) {emit(key, {count: 1})}}
    var reduce = function(key, emits) {total = 0; for (var i in emits) {total += emits[i].count;} return {"count": total}}
```


## 常用聚合写法

BI实现思路， 实现了多维度交叉， 度量的总计， 计数， 去重计数， 平均

``` text
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

``` text
db.DELIVER_DELIVER。find().forEach(function(item){db.getCollection('DELIVER_DELIVER').update({"_id": item._id},{$set:{"name": item.code}})})
```

## 查询并修改2

``` text
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

``` text
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

``` text
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

``` text
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

``` text
db.getCollection('BI_COLUMN').aggregate([
    {
        $match: {
            dtype: 5,
            ttype: 0
        }
    },
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

``` text
db.getCollection('BI_COLUMN').aggregate([
    {
        $match: {
            ttype: 0,
            dtype: 1
        }
    },
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
                        "$lt": ['$number', 200]
                    },
                    "then": "<200",
                    "else": {
                        "$cond": {
                            "if": {
                                "$and": [{
                                    "$gte": ["$number", 200]
                                }, {
                                    "$lt": ["$number", 500]
                                }]
                            },
                            "then": "200~500",
                            "else": {
                                "$cond": {
                                    "if": {
                                        "$and": [{
                                            "$gte": ["$number", 500]
                                        }, {
                                            "$lte": ["$number", 800]
                                        }]
                                    },
                                    "then": "500~800",
                                    "else": {
                                        "$cond": {
                                            "if": {
                                                "$and": [{
                                                    "$gte": ["$number", 800]
                                                }, {
                                                    "$lte": ["$number", 1000]
                                                }]
                                            },
                                            "then": "800~1000",
                                            "else": ">1000"
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
