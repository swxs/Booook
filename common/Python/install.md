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
      - [安装:](#安装-2)
      - [换源:](#换源)
      - [添加多版本python](#添加多版本python)
      - [版本切换](#版本切换)
    - [pipenv](#pipenv)
      - [安装:](#安装-3)
      - [指定版本python生成虚拟环境](#指定版本python生成虚拟环境)
      - [虚拟环境切换](#虚拟环境切换)

------

## 包管理

### pip

#### 安装

<a href="/static/Python/get-pip.py" target="_blank">安装pip</a>

`curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py`

安装文档: [https://pip.pypa.io/en/stable/installing/](https://pip.pypa.io/en/stable/installing/)

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

1. 清华(推荐): `https://pypi.tuna.tsinghua.edu.cn/simple`

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
pip-compile requirements.in -o requirements.txt
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

#### 安装:

版本列表: [https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/](https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/)

windows: [https://docs.conda.io/en/latest/miniconda.html](https://docs.conda.io/en/latest/miniconda.html)

ssh 问题解决: [https://blog.csdn.net/Sky_Tree_Delivery/article/details/109078288](https://blog.csdn.net/Sky_Tree_Delivery/article/details/109078288)

> 将`~miniconda3\Library\bin`添加到环境变量

linux: 
``` sh
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
```

```
wget https://repo.continuum.io/miniconda/Miniconda3-py39_4.9.2-Linux-x86_64.sh
```

#### 换源:

``` sh
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --set show_channel_urls yes 
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
```

#### 添加多版本python

``` sh
conda create -n python36 python=3.6
```

#### 版本切换
``` sh
conda activate python36
conda deactivate
```


### pipenv

#### 安装:

`pip install pipenv`

#### 指定版本python生成虚拟环境

`pipenv --python [path]`

#### 虚拟环境切换

`pipenv shell`

