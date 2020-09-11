# MongoDB

------

- [MongoDB](#mongodb)
  - [图谱](#图谱)

------

## 图谱

{% simplemindmap type="txtmap" %}
``` txtmap
mongodb
    MapReduce
        EX1
            var mapFunction1 = function() { emit(this.cust_id, this.price); };
            var reduceFunction1 = function(keyCustId, valuesPrices) { return Array.sum(valuesPrices); };
            db.orders.mapReduce( mapFunction1, reduceFunction1,  { out: "map_reduce_example" } )
        EX2
            var map = function() {for (var key in this) {emit(key, {count: 1})}}
            var reduce = function(key, emits) {total = 0; for (var i in emits) {total += emits[i].count;} return {"count": total}}
            o
    aggregate
        db.matched_rspd.aggregate([{$group : {_id : "$rspd_id", num_tutorial : {$sum : 1}}}, {$match: { num_tutorial: { $gt: 1}}}])
          {         $group : {            _id : { month: { $month: "$date" }, day: { $dayOfMonth: "$date" }, year: { $year: "$date" } },            totalPrice: { $sum: { $multiply: [ "$price", "$quantity" ] } },            averageQuantity: { $avg: "$quantity" },            count: { $sum: 1 }         }       }
    命令
        insert
        insertOne
        insertMany
        find
            参数列表
                查找
                显示控制
            查找条件
                $or
                $not
                $exists
                $in
                $nin
                $mod
                $lt
                $gt
                $ne
                $all
                $each
                $size
                $where
                    接一个JS函数
                $text: {$search: ""}
            显示条件
                $slice
            文本匹配
                正则
                    /reg/
        update
            参数列表
                查找
                修改
                不存在时是否插入
                是否复数修改
                    {$mutli: 1}
            修改器
                $inc
                $set
                $unset
                $push
                $pull
                $pop
                    $pop: {key: 1} 数组末尾
                    $pop: {key： -1} 数组开头
                $addToSet
        updateOne
        updateMany
        replaceOne
        deleteOne
        deleteMany
        remove
        drop
        dropDatabase
        count
        distinct
        sort
        limit
        skip
    Aggregation
        $match
        $redact
        $addFields
        $project
        $group
    MapReduce
        map
        reduce
        query
        output
    设置索引
        ensureIndex
        {$unique: true}
        {$dropDup: true}
    权限
    文件系统
    备份
        mongodump
            -h
            -d
            -c
            -u
            -p
            --dbpath
        mongorestore
            -d
            -o
            --drop
    主从搭建
    集群搭建
```
{% endsimplemindmap %}
