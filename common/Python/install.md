# 安装

---

- [安装](#安装)
  - [包管理](#包管理)
    - [包加速](#包加速)
      - [临时设值](#临时设值)
      - [全局设值](#全局设值)
      - [可以使用的国内镜像](#可以使用的国内镜像)
    - [包解析](#包解析)
    - [conda包管理](#conda包管理)
    - [pip](#pip)

---

## 包管理

### 包加速

#### 临时设值

``` sh
-i/--index-url
--trusted-host
```

#### 全局设值

``` sh
pip config set global.index-url 
pip config set global.trusted-host
```

#### 可以使用的国内镜像

``` sh
https://pypi.tuna.tsinghua.edu.cn/simple # 清华
http://pypi.douban.com/simple/ # 豆瓣
http://mirrors.aliyun.com/pypi/simple/
```

### 包解析

``` sh
pip install pip-tools
pip-compile requirements.in > requirements.txt
```

### conda包管理

``` sh
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
```

``` sh
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/ 
conda config --set show_channel_urls yes 
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
```

### pip

<a href="/static/Python/get-pip.py" target="_blank">安装pip</a>
