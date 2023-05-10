# 安装

------

- [安装](#安装)
  - [centos 安装](#centos-安装)
    - [安装 Docker](#安装-docker)
    - [安装 Docker Compose](#安装-docker-compose)
  - [centos 升级](#centos-升级)
    - [升级docker](#升级docker)
    - [升级docker-compose](#升级docker-compose)
    - [Centos 6.7 安装 Docker几个坑](#centos-67-安装-docker几个坑)
  - [windows 安装](#windows-安装)

------

## centos 安装 

### 安装 Docker

```sh
yum install epel-release
yum install docker-io
vi /etc/sysconfig/docker
other-args更改为：other_args="--exec-driver=lxc --selinux-enabled"
```

```sh
# 修改镜像
mkdir -p /etc/docker
tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://registry.docker-cn.com"]
}
EOF
```

```sh
service docker start
将docker加入开机启动
chkconfig docker on
```

### 安装 Docker Compose

```sh
pip install pip==9.0.1
pip install docker-compose==1.5.2
```

可能需要修改docker-compose.yml, 具体参考
[BLOG](https://blog.csdn.net/kinginblue/article/details/73527832)

## centos 升级

### 升级docker

```sh
# 停止当前正在运行的Docker服务：
sudo systemctl stop docker
#  删除旧版本的Docker：
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
# 安装依赖项：
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
# 添加Docker存储库：
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# 安装最新版本的Docker：
sudo yum install docker-ce docker-ce-cli containerd.io
# 启动Docker服务：
sudo systemctl start docker
```

### 升级docker-compose

```
sudo curl -L "https://github.com/docker/compose/releases/download/v2.17.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
```

### Centos 6.7 安装 Docker几个坑

官方文档是针对7以上版本的，不适用

pip版本必须是9.0.1

docker-compose必须是1.5.2

1.5.2版本 只支持 V1 版本的 docker-compose.yml，所以需要修改，大多是删除 `version: "2" ` 和`services:`两行

docker-compose.yml

## windows 安装

参考: 