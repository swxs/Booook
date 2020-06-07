# 问题排查

---

- [问题排查](#问题排查)
  - [2020/05/11](#20200511)
    - [服务器磁盘占用过高](#服务器磁盘占用过高)
  - [2020/05/12](#20200512)
    - [账号服务错误](#账号服务错误)

---

## 2020/05/11

### 服务器磁盘占用过高

``` sh
df -h
# 99G占用了90G左右

find . -type f -size +800M
find . -type f -size +800M  -print0 | xargs -0 ls -l
find . -type f -size +800M  -print0 | xargs -0 du -h
find . -type f -size +800M  -print0 | xargs -0 du -hm | sort -nr
# 没有
find . -type f -size +500M
# 有一个数据库导出文件， 删除

# 应该不是大文件导致的
du -h --max-depth=1
du -h --max-depth=2

# 总计只占用了4G左右，考虑僵尸进程导致文件回收失败的情况
lsof | grep delete
lsof -n | grep deleted

# 确实存在异常数据，占了60G, 强制关闭解决
kill -9 {pid}

```

## 2020/05/12

### 账号服务错误

``` sh

# 电脑端访问失败、手机端可以访问
tail -f /data/docker/mount/nginx/logs/access_home.log
# 所有请求都正常200返回

# 查看另一个服务，发现很慢，差不多1s才返回，可能是接口太慢被拒绝了
# 看了下日志，最近有攻击记录，看看连接情况
netstat -nat
# 发现有一个美国地址， 想起来梯子开的全局模式， 关闭搞定...
```
