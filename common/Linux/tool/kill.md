# kill

------

- [kill](#kill)
  - [强制关闭进程](#强制关闭进程)

------

## 强制关闭进程

``` sh
ps aux|grep $2|grep -v grep|awk '{print $2}'|xargs kill -9
```
