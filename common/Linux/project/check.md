# 问题排查

------

- [问题排查](#问题排查)
  - [2023/10/18](#20231018)
  - [基于阿里云SLS统计接口平均响应时间](#基于阿里云sls统计接口平均响应时间)
  - [2023/03/20](#20230320)
    - [kafka-python 消息发送失败](#kafka-python-消息发送失败)
  - [2023/02/10](#20230210)
    - [内存不足](#内存不足)
  - [2022/08/08](#20220808)
    - [磁盘不足](#磁盘不足)
  - [2022/07/18](#20220718)
    - [继续内存问题](#继续内存问题)
  - [2022/04/11](#20220411)
    - [安装gdb失败](#安装gdb失败)
  - [2022/01/52](#20220152)
    - [OSS图片没有Access-Control-Allow-Origin: \*请求头](#oss图片没有access-control-allow-origin-请求头)
  - [2021/12/20](#20211220)
    - [尝试排查内存泄露问题](#尝试排查内存泄露问题)
      - [timeout 问题](#timeout-问题)
    - [top看到的内存占用与heap不一致](#top看到的内存占用与heap不一致)
  - [2020/10/28](#20201028)
    - [延长ssh](#延长ssh)
    - [$'\\r': command not found](#r-command-not-found)
  - [2020/05/11](#20200511)
    - [服务器磁盘占用过高](#服务器磁盘占用过高)
  - [2020/05/12](#20200512)
    - [账号服务错误](#账号服务错误)
  - [2020/06/19](#20200619)
    - [.h5文件读写报错](#h5文件读写报错)

------

## 2023/10/18

## 基于阿里云SLS统计接口平均响应时间

```
content:"FINISH"| select avg(runtime) as avg_runtime
# 1200.4225628447766

content:"FINISH" AND (NOT content:"helloworld")| select avg(runtime) as avg_runtime
# 2481.719275745035

content:"FINISH" AND (NOT content:"chart_show") AND (NOT content:"helloworld")| select avg(runtime) as avg_runtime
# 892.4810332735514

content:"FINISH" AND (content:"chart_show")| select avg(runtime) as avg_runtime
# 4736.45184059977

content:"FINISH" | select content, avg(runtime) as avg_runtime group by content

content:"FINISH" AND (content:"chart_show") AND (code: "tims") AND (runtime > 5000) | select
  code,
  substr(content, 26, 24) as chart_id,
  avg(runtime) as avg_runtime
group by
  code, substr(content, 26, 24)
order by avg(runtime) desc
```

## 2023/03/20

### kafka-python 消息发送失败

kafka-python可以创建topic，但是无法发送消息

消息是正常flush的producer.flush()， 而且老版本是正常发送

最后发现加了机器host就可以正常访问了，

原因如下：

`site-packages\kafka\client_async.py`

```
def _maybe_connect(self, node_id):
    """Idempotent non-blocking connection attempt to the given node id."""
    with self._lock:
        conn = self._conns.get(node_id)

        if conn is None:
            # 这边会尝试获取kafka元信息
            broker = self.cluster.broker_metadata(node_id)
            assert broker, 'Broker id %s not in current metadata' % (node_id,)

            log.debug("Initiating connection to node %s at %s:%s",
                      node_id, broker.host, broker.port)
            # 这边会使用元信息的host来维持连接
            host, port, afi = get_ip_port_afi(broker.host)
            cb = WeakMethod(self._conn_state_change)
            conn = BrokerConnection(host, broker.port, afi,
                                    state_change_callback=cb,
                                    node_id=node_id,
                                    **self.config)
            self._conns[node_id] = conn

        # Check if existing connection should be recreated because host/port changed
        elif self._should_recycle_connection(conn):
            self._conns.pop(node_id)
            return False

        elif conn.connected():
            return True

        conn.connect()
        return conn.connected()
```

kafka配置的host是机器名

```
get /brokers/ids/222
# 这边的host导致无法解析
{"listener_security_protocol_map":{"PLAINTEXT":"PLAINTEXT"},"endpoints":["PLAINTEXT://<机器名>:9092"],"jmx_port":9393,"host":"<机器名>","timestamp":"1679283287285","port":9092,"version":4}
```

调整kafka配置的host后修复

## 2023/02/10

### 内存不足

```
yum update
yum install -y gdb
yum install -y python-psutil python-debuginfo python-pycallgraph pygobject3 webkitgtk3 python-meliae
```

```
python3 -m pip install pyrasite

cd /usr/local/python3/lib/python3.8/site-packages/pyrasite/tools
python3 -m pip install urwid meliae objgraph guppy3

python3 shell.py 11

>>> import objgraph
>>> objgraph.show_most_common_types(limit=20)
```

## 2022/08/08

### 磁盘不足

20G磁盘用完了，看下情况

清理日志差不多1G
```sh
journalctl --disk-usage

journalctl --vacuum-time=1w
journalctl --vacuum-size=10M
```

清理snap差不多4G

docker磁盘7G

清理不需要的资源差不多1G
```
docker system prune -a
```
剩下5G，但是看镜像只有600M，可能要研究下
```
# 看着实际占用的磁盘远比这个大
docker system df -v
```

## 2022/07/18

### 继续内存问题

```
gdb --pid 30019

# 查看堆栈
>>> t a a py-bt
>>> t a a bt
# 查看虚拟内存占用情况
>>> i proc m
```

安装perf

```
apt-get install -y linux-source binutils-dev libdw-dev python-dev libnewt-dev
cd /usr/src
tar -xf linux-source-4.19.tar.xz
cd linux-source-4.19/tools/perf
make
make install
```

修改docker
```sh
# docker
docker run --cap-add sys_admin
```

```sh
# docker-compose 添加配置
    cap_add:
      - sys_admin
```

```
./perf probe -x /lib/x86_64-linux-gnu/libc-2.28.so --add malloc
./perf record -e probe_libc:malloc -aR sleep 10
```
报错
```
Error:
The sys_perf_event_open() syscall returned with 22 (Invalid argument) for event (probe_libc:malloc).
/bin/dmesg | grep -i perf may provide additional information.
```
没找到解决方案


```
git clone https://github.com/brendangregg/FlameGraph.git
```

```
./perf/perf record -p 34326 -e syscalls:sys_enter_brk -a -g -- sleep 1200
./perf/perf record -p 34326 -e syscalls:sys_enter_mmap -a -g -- sleep 1200
./perf/perf script -i perf.data &> perf.unfold
./FlameGraph/stackcollapse-perf.pl perf.unfold &> perf.folded
./FlameGraph/flamegraph.pl perf.folded > perf.svg

rm -f perf.data perf.data.old perf.unfold perf.folded perf.svg
```

```
./perf/perf record -e page-fault -a -g -- sleep 120
```

## 2022/04/11

### 安装gdb失败

清华源将[glibc]文件删除了, 已提issue

- [https://github.com/tuna/issues/issues/725](https://github.com/tuna/issues/issues/725)

已经可以了，先`apt-get update`

先换源安装

- [https://blog.csdn.net/qq_21095573/article/details/99736630](https://blog.csdn.net/qq_21095573/article/details/99736630)

用的阿里源

查看操作系统版本 `head -n 1 /etc/issue`

替换文件 `/etc/apt/sources.list` 然后 `apt-get upgrade`

## 2022/01/52

### OSS图片没有Access-Control-Allow-Origin: *请求头

```sh
# curl访问资源
curl -voa '{img-url}' -H 'Origin:{host-url}'
```

- [相关资料](https://www.cnblogs.com/wwyz/p/9210856.html)


## 2021/12/20

### 尝试排查内存泄露问题

- 修改docker配置

```sh
# docker
docker run --cap-add sys_ptrace 
```

```sh
# docker-compose 添加配置
    cap_add:
      - sys_ptrace
```

- 安装gdb

```
apt-get install -y gdb
apt-get install -y python3-dbg

gdb
>>> source /usr/share/gdb/auto-load/usr/bin/python3.7-gdb.py

```

教程：[https://wiki.python.org/moin/DebuggingWithGdb](https://wiki.python.org/moin/DebuggingWithGdb)

- 利用pyrasite访问进程

1. 安装pyrasite

```
pip install pyrasite
pyrasite-shell [pid]
```
#### timeout 问题

修改`vim /usr/local/lib/python3.8/site-packages/pyrasite/ipc.py`

```
self.sock.settimeout(5) -> self.sock.settimeout(50)
```

2. 安装guppy3

```
pip install guppy3

>>> from guppy import hpy
>>> h = hpy()
>>> h.setref()
>>> heap = h.heap()

# 无依赖的
>>> byclodo = heap.byclodo
>>> byclodo[0].sp
>>> byclodo[0].get_rp(10)

>>> ids = heap.byid
>>> idset = heap.byidset
>>> bymodule = heap.bymodule
>>> byrcs = heap.byrcs
>>> bysize = heap.bysize
>>> bytype = heap.bytype
>>> byunity = heap.byunity
>>> byvia = heap.byvia


```

 'biper', 'brief', 'by', 'byclodo', 'byid', 'byidset', 'bymodule', 'byprod', 'byrcs', 'bysize', 'bytype', 'byunity', 'byvia', 'count', 'dictof', 'diff', 'disjoint', 'doc', 'dominos', 'domisize', 'dump', 'er', 'fam', 'get_ckc', 'get_examples', 'get_render', 'get_rp', 'get_shpaths', 'imdom', 'indisize', 'kind', 'maprox', 'more', 'nodes', 'owners', 'partition', 'parts', 'pathsin', 'pathsout', 'prod', 'referents', 'referrers', 'rp', 'shpaths', 'size', 'sp', 'stat', 'test_contains', 'theone'

```
import random

h.heap().byid[random.randint(0, 494765)].sp
```

1. 检查垃圾数据

```
>>> import gc
>>> gc.collect()
>>> gc.garbage
```

1. 打印堆栈

```
# 需要gdb
pip install pystack-debugger
pystack [pid]
```

### top看到的内存占用与heap不一致

`gcore <pid>`

生成失败了

```
root@xm-biapi:/XM# gcore 98
warning: process 98 is already traced by process 15209
ptrace: Operation not permitted.
You can't do that without a process to debug.
The program is not being run.
gcore: failed to create core.98
```

清除相关监听

`ps -ef | grep gdb`

## 2020/10/28

### 延长ssh

- 修改配置

```sh
#（每30秒往客户端发送会话请求，保持连接）
ClientAliveInterval 30
#（去掉注释即可，3表示重连3次失败后，重启SSH会话）
ClientAliveCountMax 3
```

- 重启

```sh
service sshd restart
```

- 没有的话就重装

```
yum -y install openssh-server openssh-clients
```

### $'\r': command not found

```sh
vi
:set ff-unix
```

## 2020/05/11

### 服务器磁盘占用过高

```sh
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

```sh

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

```sh
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

```sh
# 安装lsof
yum install lsof

lsof 5d70d351aace70000afe0d1c_20.h5
lsof +D ./
```

查询日志， 发现有问题的文件都有过相关报错

```sh
[I 200620 09:37:47 aioredislock:143 pid=11] 获得/XM/data/5edf5b19aace70000cbfccec_3.h5读锁
[E 200620 09:37:47 df_utils:186 pid=11] PID: 11, /XM/data/5edf5b19aace70000cbfccec_3.h5 key[/df_1591804800] exception [Unknown]!
Traceback (most recent call last):
  File "/XM/commons/df_utils.py", line 172, in get_dataframe_by_file
    df = pd.read_hdf(abs_filename, key=key, **kwargs)
  File "/usr/local/lib/python3.6/site-packages/pandas/io/pytables.py", line 407, in read_hdf
    return store.select(key, auto_close=auto_close, **kwargs)
  File "/usr/local/lib/python3.6/site-packages/pandas/io/pytables.py", line 761, in select
    s = self._create_storer(group)
  File "/usr/local/lib/python3.6/site-packages/pandas/io/pytables.py", line 1457, in _create_storer
    fields = group.table._v_attrs.fields
  File "/usr/local/lib/python3.6/site-packages/tables/group.py", line 839, in __getattr__
    return self._f_get_child(name)
  File "/usr/local/lib/python3.6/site-packages/tables/group.py", line 711, in _f_get_child
    self._g_check_has_child(childname)
  File "/usr/local/lib/python3.6/site-packages/tables/group.py", line 398, in _g_check_has_child
    % (self._v_pathname, name))
tables.exceptions.NoSuchNodeError: group ``/df_1591804800`` does not have a child named ``table``
[I 200620 09:37:47 aioredislock:155 pid=11] 释放/XM/data/5edf5b19aace70000cbfccec_3.h5读锁， 完全释放
```

通过该问题去查询，发现相关issue:
[Build libhdf5 with the --enable-threadsafe flag](https://github.com/PyTables/PyTables/issues/776)

尝试根据该方法编译一个线程安全的 `libhdf5.so`

下载hdf5源码
[hdf5项目](https://www.hdfgroup.org/downloads/hdf5/source-code/)

```sh
cd /opt/
wget -i https://hdf-wordpress-1.s3.amazonaws.com/wp-content/uploads/manual/HDF5/HDF5_1_12_0/source/hdf5-1.12.0.tar.gz

./configure --prefix=/usr/local/hdf5 --disable-hl --enable-threadsafe
make install
```

看了下版本对不上， 当前版本`3.5.1`会有一个指向tables自己编译的 `ldd hdf5extension.cpython-36m-x86_64-linux-gnu.so`，而不是系统定义的

	ldd hdf5extension.cpython-36m-x86_64-linux-gnu.so 
	  linux-vdso.so.1 (0x00007fff94b0a000)
	  libhdf5-1b021ebd.so.101.1.0 => /usr/local/lib/python3.6/site-packages/tables/./.libs/libhdf5-1b021ebd.so.101.1.0 (0x00007ff7dd99c000)
	  libstdc++.so.6 => /usr/lib/x86_64-linux-gnu/libstdc++.so.6 (0x00007ff7dd61a000)
	  libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007ff7dd316000)
	  libgcc_s.so.1 => /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007ff7dd0ff000)
	  libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007ff7dcee2000)
	  libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007ff7dcb43000)
	  librt.so.1 => /lib/x86_64-linux-gnu/librt.so.1 (0x00007ff7dc93b000)
	  libsz-1c7dd0cf.so.2.0.1 => /usr/local/lib/python3.6/site-packages/tables/./.libs/./libsz-1c7dd0cf.so.2.0.1 (0x00007ff7dc737000)
	  libaec-2147abcd.so.0.0.4 => /usr/local/lib/python3.6/site-packages/tables/./.libs/./libaec-2147abcd.so.0.0.4 (0x00007ff7dc52e000)
	  libz-a147dcb0.so.1.2.3 => /usr/local/lib/python3.6/site-packages/tables/./.libs/./libz-a147dcb0.so.1.2.3 (0x00007ff7dc319000)
	  libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007ff7dc115000)
	  /lib64/ld-linux-x86-64.so.2 (0x00007ff7de323000)

先尝试修改`tables/__init__.py`中的依赖路径, 看了下代码只有windows平台是基于配置的， unix系需要在安装时就指定路径

参考 [安装文档](https://www.pytables.org/usersguide/installation.html)


```sh
# 尝试使用进行安装， 但是失败
pip3 install --install-option='--hdf5=/usr/local/hdf5/' tables==3.5.1
```

[相关issue](https://github.com/PyTables/PyTables/issues/219)

很老的版本需要系统自带的hdf5，现在会打在wheel里，就不维护了。但是打出来的有问题啊，唉，得继续找办法了

```sh
# 尝试下载源码，
python setup.py install -hdf5=/usr/local/hdf5/

# 装不了， 查了一圈
export DYLD_LIBRARY_PATH=/usr/local/hdf5/lib

# 运行测试失败
Traceback (most recent call last):
  File "test_tables.py", line 1, in <module>
    import tables
  File "/usr/local/lib/python3.6/dist-packages/tables-3.5.1-py3.6-linux-x86_64.egg/tables/__init__.py", line 93, in <module>
    from .utilsextension import (
ImportError: libhdf5.so.200: cannot open shared object file: No such file or directory

# 看报错信息
ld -ldhf5 --verbose
# 是没找到 hdf5.so 导致的， 尝试加入，并检查了一下其他库都有在
ln -s /usr/local/hdf5/lib/libhdf5.so /usr/local/lib/libhdf5.so
# 再尝试
ld -ldhf5 --verbose
# 换了一个报错
# ld: warning: cannot find entry symbol _start; not setting start address
# 查了一下是因为没有libc.so导致的， 但确实有加载到啊
# found libc.so.6 at //lib/x86_64-linux-gnu/libc.so.6
```
