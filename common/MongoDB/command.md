# command

---

- [command](#command)
  - [command](#command-1)

---


## command


```
mongodump -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 -o 文件存在路径


mongorestore -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 --drop 文件存在路径

mongoexport -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 -c 表名 -f 字段 -q 条件导出 --csv -o 文件名

mongoimport -h IP --port 端口 -u 用户名 -p 密码 -d 数据库 -c 表名 --upsert 插入或者更新现有数据 --drop 文件名

mongorestore --gzip --archive=dump.gz 库名是 cem_server_vehicel
```

```
Mongodump: Unrecognized field 'snapshot'
--forceTableScan
```

/etc/mongod.conf

/var/log/mongodb/mongod.log
/var/run/mongodb/mongod.pid

ll -h /var/run/mongodb/mongod.pid /tmp/mongodb-27018.sock
rm -f /var/run/mongodb/mongod.pid /tmp/mongodb-27018.sock | service mongod start

service mongod status
service mongod stop

121.199.2.28 10.10.11.50

BI 可行的思路， 实现了多维度交叉之后， 度量的总计， 计数， 去重计数， 平均
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




db.getCollection('BI_COLUMN').aggregate([
{
    $lookup:
        {
          from: "BI_WORKTABLE",
          localField: "worktable_id",
          foreignField: "_id",
          as: "worktable_docs"
        }
},
{
    $unwind: "$worktable_docs"
},
{
    $lookup:
        {
          from: "BI_DATASOURCE",
          localField: "worktable_docs.datasource_id",
          foreignField: "_id",
          as: "worktable_docs.datasource_docs"
        }
},
])


db.getCollection('BI_CHART').aggregate([
    {
        $lookup: {
            from: "BI_FIELD",
            "let": { "chartid":"$_id", },
            "pipeline": [
                {
                    $match: {
                        $expr: {
                            $eq: ["$chart_id", "$$chartid"]
                        }
                    }
                },
                {
                    $group: {
                        _id: null,
                        total_length: {
                            $sum: "length"
                        }
                    }
                }
            ],
            as: "chart_docs"
        }
    }
])


db.getCollection('BI_COLUMN').aggregate([
{
    $lookup:
        {
          from: "BI_WORKTABLE",
          localField: "worktable_id",
          foreignField: "_id",
          as: "worktable_docs"
        }
},
{
    $addFields: 
        {
            datasource_id: "$worktable_docs.datasource_id"
        }
},
{
    $lookup:
        {
          from: "BI_DATASOURCE",
          localField: "worktable_docs.datasource_id",
          foreignField: "_id",
          as: "datasource_docs"
        }
},
])


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
            {
                $lookup: {
                    from: "VOTE_OPTION",
                    let: {
                        "questionid": "$_id"
                    },
                    pipeline: [
                        {
                            $match: {
                                $expr: {
                                    $eq: ["$question", "$$questionid"]
                                }
                            }
                        }
                    ],          
                as: "option_list"
            }
        }
        ],
        as: "question_list"
    }}
])



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
    }}
])


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
