# 安装

------

- [安装](#安装)
  - [安装](#安装-1)
    - [centos 安装](#centos-安装)
    - [windows 安装](#windows-安装)
  - [包管理](#包管理)
    - [npm](#npm)
    - [yarn](#yarn)
    - [cnpm](#cnpm)
  - [包加速](#包加速)
    - [临时设置](#临时设置)
    - [全局设置](#全局设置)
    - [可用的国内源](#可用的国内源)
    - [查看\设置 npm 安装路径](#查看设置-npm-安装路径)

------

## 安装

### centos 安装

```sh
rpm -ivh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-remi
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum install -y gcc-c++ make
yum install -y nodejs
npm install -g cnpm --registry=https://registry.npm.taobao.org
```

### windows 安装

[下载](#../Tool/REAMME.md#NodeJS)

## 包管理

### npm

### yarn

```sh
npm install yarn -g --registry https://registry.npm.taobao.org
```

### cnpm

```sh
npm install yarn -g --registry https://registry.npm.taobao.org
```

## 包加速

### 临时设置

```sh
--registry
```

### 全局设置

```sh
npm config set registry https://registry.npm.taobao.org
```

### 可用的国内源

```sh
https://registry.npm.taobao.org
```

### 查看\设置 npm 安装路径

```sh
npm config get prefix
```

```sh
npm config set prefix
```
