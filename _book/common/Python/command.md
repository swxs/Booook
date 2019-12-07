# command

---

- [command](#command)
  - [包管理](#%e5%8c%85%e7%ae%a1%e7%90%86)
    - [包加速](#%e5%8c%85%e5%8a%a0%e9%80%9f)
      - [临时设值](#%e4%b8%b4%e6%97%b6%e8%ae%be%e5%80%bc)
      - [全局设值](#%e5%85%a8%e5%b1%80%e8%ae%be%e5%80%bc)
      - [可以使用的国内镜像](#%e5%8f%af%e4%bb%a5%e4%bd%bf%e7%94%a8%e7%9a%84%e5%9b%bd%e5%86%85%e9%95%9c%e5%83%8f)
    - [包解析](#%e5%8c%85%e8%a7%a3%e6%9e%90)
    - [conda包管理](#conda%e5%8c%85%e7%ae%a1%e7%90%86)
  - [python2to3](#python2to3)

---

## 包管理

---

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
https://pypi.tuna.tsinghua.edu.cn/simple
http://pypi.douban.com/simple/
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

## python2to3

``` sh
2to3 --output-dir=[output_dirpath] -W -n [input_dirpath]
```
