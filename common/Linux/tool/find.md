# find

------

- [find](#find)
  - [场景](#场景)
  - [命令](#命令)
  - [实例](#实例)
    - [查找指定名字的文件并删除](#查找指定名字的文件并删除)
  - [文档](#文档)

------


## 场景

寻找指定文件

## 命令

`find [-H] [-L] [-P] [-D debugopts] [-Olevel] [path...] [expression]`

## 实例

### 查找指定名字的文件并删除

``` sh
find . -maxdepth 1 -regex "\.\/[0-9a-f]*_[0-9]*\.h5" -exec rm -f {} +;
```

## 文档

- 正则语法说明: [https://www.gnu.org/software/findutils/manual/html_node/find_html/Regular-Expressions.html](https://www.gnu.org/software/findutils/manual/html_node/find_html/Regular-Expressions.html)
