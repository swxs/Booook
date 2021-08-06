# curl

------

- [curl](#curl)
  - [header](#header)

------

## header

我们可以通过传递 -i 参数给 curl 命令，该参数 能够显示响应的头部

``` sh
curl -i -XGET http://localhost:9200/website/blog/124?pretty
```
