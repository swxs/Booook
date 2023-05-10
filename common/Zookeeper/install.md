# 安装

------
- [安装](#安装)
  - [zkCli.sh](#zkclish)

------

## zkCli.sh

```sh
# 帮助
h
# 退出
quit
# 查看列表
ls <path>
# 查看信息
stat <path>
# 查看内容
get [path]
# 创建节点
create [-s|-e] <path>
# 设置内容
set <path> <data> [<version>]
# 设置节点配额
setquota [-n|-b] <value> <path>
# 查看节点配额
listquota <path>
# 删除节点配额
delquota [-n|-b] <path>
```