# 安装

------

- [安装](#安装)
  - [python kernel](#python-kernel)
  - [clojure kernel](#clojure-kernel)

------

## python kernel

``` sh
pip install jupyter
```


## clojure kernel

1. 准备环境

``` sh
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

``` sh
clojure -A:depstar -m hf.depstar.uberjar clojupyter-standalone.jar
```

3. a

``` sh
clj -m clojupyter.cmdline install --ident clojupyter-1 --jarfile clojupyter-standalone.jar
```

查看目录`~\AppData\Roaming\jupyter`， 修改部分内容，移入kernels， 修改`kernel.json`文件
