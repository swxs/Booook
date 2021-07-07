# 命令

------

- [命令](#命令)
  - [创建](#创建)
  - [查询](#查询)
    - [查询条件](#查询条件)
    - [显示规则](#显示规则)
  - [更新](#更新)
    - [更新规则](#更新规则)
    - [是否复数修改](#是否复数修改)
  - [删除](#删除)
  - [其他](#其他)
  - [Aggregation](#aggregation)
  - [MapReduce](#mapreduce)
  - [index](#index)
  - [文档](#文档)

------

## 创建
  - insert
  - insertOne
  - insertMany

## 查询
  - find [查询条件] [显示规则]
  - count
  - distinct
### 查询条件
  - $or
  - $not
  - $exists
  - $in
  - $nin
  - $mod
  - $lt
  - $gt
  - $ne
  - $all
  - $each
  - $size
  - $where
  - $search
  - $regex: /reg/

### 显示规则
  - $slice
                    
## 更新
  - update [查询条件] [更新规则] [是否追加] [是否复数修改]
  - updateOne
  - updateMany
  - replaceOne
### 更新规则
  - $inc
  - $set
  - $unset
  - $push
  - $pull
  - $pop
    - $pop: {key: 1} 数组末尾
    - $pop: {key： -1} 数组开头
  - $addToSet
### 是否复数修改
  - {$mutli: 1}
           
## 删除
  - deleteOne
  - deleteMany
  - remove
  - drop
  - dropDatabase

## 其他
  - sort
  - limit
  - skip

## Aggregation
  - $match
  - $redact
  - $addFields
  - $project
  - $group

## MapReduce
  - map
  - reduce
  - query
  - output

## index
  ensureIndex
  createIndex
  {$unique: true}
  {$dropDup: true}

## 文档
- 官方文档: [https://docs.mongodb.com/manual/introduction/](https://docs.mongodb.com/manual/introduction/)
