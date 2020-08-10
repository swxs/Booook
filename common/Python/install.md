# 安装

---

- [安装](#安装)
  - [包管理](#包管理)
    - [pip](#pip)
    - [conda](#conda)
  - [包加速](#包加速)
    - [临时设置](#临时设置)
    - [全局设值](#全局设值)
    - [可以使用的国内镜像](#可以使用的国内镜像)

---

## 包管理

### pip

安装:

<a href="/static/Python/get-pip.py" target="_blank">安装pip</a>

更新:

`pip install -U pip`

包解析:

``` sh
pip install pip-tools
pip-compile requirements.in > requirements.txt
```

### conda

安装:
``` sh
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
```

换源:
``` sh
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/ 
conda config --set show_channel_urls yes 
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
```

## 包加速

### 临时设置

``` sh
-i/--index-url
--trusted-host
```

### 全局设值

``` sh
pip config set global.index-url [index-url]
pip config set global.trusted-host
```

### 可以使用的国内镜像

``` sh
https://pypi.tuna.tsinghua.edu.cn/simple # 清华
http://pypi.douban.com/simple/ # 豆瓣
http://mirrors.aliyun.com/pypi/simple/
```

e.g:
``` sh
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```
