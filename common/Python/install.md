# 安装

------

- [安装](#安装)
  - [包管理](#包管理)
    - [pip](#pip)
      - [安装](#安装-1)
      - [更新](#更新)
      - [包加速](#包加速)
        - [临时设置](#临时设置)
        - [全局设值](#全局设值)
        - [可以使用的国内镜像](#可以使用的国内镜像)
      - [包卸载](#包卸载)
      - [包解析](#包解析)
      - [包缓存](#包缓存)
      - [指定wheel地址](#指定wheel地址)
      - [特殊包](#特殊包)
    - [conda](#conda)

------

## 包管理

### pip

#### 安装

<a href="/static/Python/get-pip.py" target="_blank">安装pip</a>

#### 更新

`pip install -U pip`

#### 包加速

##### 临时设置

``` sh
-i/--index-url
--trusted-host
```

##### 全局设值

``` sh
pip config set global.index-url [index-url]
pip config set global.trusted-host [index-domain]
```

##### 可以使用的国内镜像

1. 清华(推荐): `https://pypi.tuna.tsinghua.edu.cn/simple `

``` sh
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple/
pip config set global.trusted-host pypi.tuna.tsinghua.edu.cn
```

1. 豆瓣(不推荐) `http://pypi.douban.com/simple/`

``` sh
pip config set global.index-url http://pypi.douban.com/simple/
pip config set global.trusted-host pypi.douban.com
```

1. 阿里(不推荐) `http://mirrors.aliyun.com/pypi/simple/`

``` sh
pip config set global.index-url http://mirrors.aliyun.com/pypi/simple/
pip config set global.trusted-host mirrors.aliyun.com
```

#### 包卸载

``` sh
pip uninstall [package]
```

#### 包解析

``` sh
pip install pip-tools
pip-compile requirements.in > requirements.txt
```

#### 包缓存

``` sh
pip2tgz /var/lib/packages -r requirement.txt
```

#### 指定wheel地址

``` sh
pip wheel --wheel-dir=/root/tm_wheel
```

#### 特殊包

等价代替

```
pip install pycrypto => pip install pycryptodome
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
