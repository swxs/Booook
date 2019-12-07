# install

---

- [install](#install)
  - [cemtos 安装](#cemtos-%e5%ae%89%e8%a3%85)
  - [安装 Docker Compose](#%e5%ae%89%e8%a3%85-docker-compose)
  - [Centos 6.7 安装 Docker几个坑](#centos-67-%e5%ae%89%e8%a3%85-docker%e5%87%a0%e4%b8%aa%e5%9d%91)

---

## cemtos 安装

``` sh
yum install epel-release
yum install docker-io
vi /etc/sysconfig/docker
other-args更改为：other_args="--exec-driver=lxc --selinux-enabled"
```

``` sh
# 修改镜像
mkdir -p /etc/docker
tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://registry.docker-cn.com"]
}
EOF
```

``` sh
service docker start
将docker加入开机启动
chkconfig docker on
```

## 安装 Docker Compose

``` sh
pip install pip==9.0.1
pip install docker-compose==1.5.2
```

可能需要修改docker-compose.yml, 具体参考
https://blog.csdn.net/kinginblue/article/details/73527832

## Centos 6.7 安装 Docker几个坑

官方文档是针对7以上版本的，不适用

pip版本必须是9.0.1

docker-compose必须是1.5.2

1.5.2版本 只支持 V1 版本的 docker-compose.yml，所以需要修改，大多是删除 `version: "2" ` 和`services:`两行

docker-compose.yml
