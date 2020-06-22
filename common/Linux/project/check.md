# 问题排查

---

- [问题排查](#问题排查)
  - [2020/05/11](#20200511)
    - [服务器磁盘占用过高](#服务器磁盘占用过高)
  - [2020/05/12](#20200512)
    - [账号服务错误](#账号服务错误)
  - [2020/06/19](#20200619)
    - [.h5文件读写报错](#h5文件读写报错)

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

## 2020/06/19

### .h5文件读写报错

``` sh
Traceback (most recent call last):
  File "/XM/apps/bi/mq_handlers.py", line 167, in rule_invalidate_by_survey_respondent_submit
    await df_utils.save_dataframe_by_file(file_path, df, key=key, mode="a", format="table", append=True)
  File "/XM/commons/df_utils.py", line 139, in save_dataframe_by_file
    df.to_hdf(abs_filename, key, **kwargs)
  File "/usr/local/lib/python3.6/site-packages/pandas/core/generic.py", line 2531, in to_hdf
    pytables.to_hdf(path_or_buf, key, self, **kwargs)
  File "/usr/local/lib/python3.6/site-packages/pandas/io/pytables.py", line 276, in to_hdf
    path_or_buf, mode=mode, complevel=complevel, complib=complib
  File "/usr/local/lib/python3.6/site-packages/pandas/io/pytables.py", line 505, in __init__
    self.open(mode=mode, **kwargs)
  File "/usr/local/lib/python3.6/site-packages/pandas/io/pytables.py", line 627, in open
    self._handle = tables.open_file(self._path, self._mode, **kwargs)
  File "/usr/local/lib/python3.6/site-packages/tables/file.py", line 320, in open_file
    return File(filename, mode, title, root_uep, filters, **kwargs)
  File "/usr/local/lib/python3.6/site-packages/tables/file.py", line 784, in __init__
    self._g_new(filename, mode, **params)
  File "tables/hdf5extension.pyx", line 492, in tables.hdf5extension.File._g_new
tables.exceptions.HDF5ExtError: HDF5 error back trace

  File "H5F.c", line 511, in H5Fopen
    unable to open file
  File "H5Fint.c", line 1519, in H5F_open
    unable to lock the file
  File "H5FD.c", line 1650, in H5FD_lock
    driver lock request failed
  File "H5FDsec2.c", line 941, in H5FD_sec2_lock
    unable to lock file, errno = 11, error message = 'Resource temporarily unavailable'

End of HDF5 error back trace

Unable to open/create file '/XM/data/5d70d351aace70000afe0d1c_20.h5'
```

尝试使用读写锁，保证文件操作串行执行
读写锁正常执行，但错误没有解决

``` sh
# 安装lsof
yum install lsof

lsof 5d70d351aace70000afe0d1c_20.h5
```