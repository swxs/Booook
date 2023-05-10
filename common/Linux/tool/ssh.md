# SSH

------

- [SSH](#ssh)
  - [免密登录](#免密登录)
  - [多私钥配置](#多私钥配置)

------

## 免密登录

1. 生成私钥

```sh
ssh-keygen -t  rsa
```

2. 复制公钥到远程服务器

```sh
ssh-copy-id -i ~/.ssh/id_rsa.pub root@127.0.0.1
```

3. 重启ssh服务
```sh
systemctl restart sshd.service
```


## 多私钥配置

```
ssh-agent bash
# ssh-add 私钥名字
ssh-add id_rsa 
# 查询私钥列表
ssh-add -l
# 清空私钥列表
ssh-add -D
```
