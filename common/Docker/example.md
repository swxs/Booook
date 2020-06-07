# 实例

---

- [实例](#实例)
  - [简单场景](#简单场景)
    - [一般流程](#一般流程)
    - [删除所有container](#删除所有container)
    - [加速](#加速)
  - [特殊场景](#特殊场景)
    - [打包镜像](#打包镜像)
  - [实例](#实例-1)

---

## 简单场景

### 一般流程

``` sh
pull => [change] => tag => push

run(<-d>image) =>
               => start(container) <=> stop(container)
                                    => restart(container)
rmi(images) <=
```

### 删除所有container

``` sh
docker rm -f $(docker ps -aq)
```

### 加速

[阿里云官方](https://cr.console.aliyun.com/undefined/instances/mirrors?accounttraceid=9fc4c2ae0d664d6f975c608eb808e015hram)

``` sh
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://gr3y95az.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
```

## 特殊场景

### 打包镜像

``` sh
 # squash its history.
 docker export 77d9619a7a71 > update.tar
 docker import - update < update.tar

 # keep its history
 docker save -o update1.tar update 
 docker load < update1.tar
```

## 实例

``` sh
docker cp

"C:\Users\user1\Downloads\Miniconda3-latest-Linux-x86_64.sh" "ffcf4b501621:/home"

yum install -y bzip2

export PATH="/root/miniconda3/bin":PATH

docker pull centos
```
