# 安装

------

- [安装](#安装)
  - [python kernel](#python-kernel)
  - [clojure kernel](#clojure-kernel)
  - [javascript kernel](#javascript-kernel)
  - [C kernel](#c-kernel)
  - [C++ kernel](#c-kernel-1)
  - [Go kernel](#go-kernel)

------

## python kernel

```sh
pip install jupyter
```

```
pip3 install jupyterlab
```

## clojure kernel

1. 准备环境

```sh
bash> tree .
.
├── deps.edn
└── src
    └── user.clj

1 directory, 2 files

bash> cat deps.edn
{:deps {clojupyter {:mvn/version "0.2.3"}}
 :aliases {:depstar
           {:extra-deps
            {seancorfield/depstar {:mvn/version "0.3.0"}}}}}
            
bash> cat src/user.clj
(ns user (:require [clojupyter.kernel.version :as ver]))

(defn user-ver []
  (ver/version-string-long))
```

2. 安装编译clojupyter-standalone.jar

```sh
clojure -A:depstar -m hf.depstar.uberjar clojupyter-standalone.jar
clj -m clojupyter.cmdline install --ident clojupyter-1 --jarfile clojupyter-standalone.jar
```

3. 修改错误的安装目录

查看目录`~\AppData\Roaming\jupyter`， 修改部分内容，移入kernels， 修改`kernel.json`文件


## javascript kernel

```sh
npm install -g ijavascript
ijsinstall
```

项目地址: [https://github.com/n-riesco/ijavascript](https://github.com/n-riesco/ijavascript)

## C kernel

项目地址: [https://github.com/brendan-rius/jupyter-c-kernel](https://github.com/brendan-rius/jupyter-c-kernel)

## C++ kernel

项目地址: [https://github.com/jupyter-xeus/xeus-cling](https://github.com/jupyter-xeus/xeus-cling)

## Go kernel

项目地址: [https://github.com/gopherdata/gophernotes](https://github.com/gopherdata/gophernotes)
