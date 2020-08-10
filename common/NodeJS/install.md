# 安装

---

- [安装](#安装)
  - [centos 安装](#centos-安装)
  - [包管理](#包管理)
    - [npm](#npm)
    - [yarn](#yarn)
    - [cnpm](#cnpm)
  - [包加速](#包加速)
    - [临时设置](#临时设置)
    - [全局设置](#全局设置)
    - [可用的国内源](#可用的国内源)

---

## centos 安装

``` sh
rpm -ivh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-remi
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum install -y gcc-c++ make
yum install -y nodejs
npm install -g cnpm --registry=https://registry.npm.taobao.org
```

## 包管理

### npm

### yarn

``` shell
npm install yarn -g --registry https://registry.npm.taobao.org
```

### cnpm

``` shell
npm install yarn -g --registry https://registry.npm.taobao.org
```

## 包加速

### 临时设置

``` shell
--registry
```

### 全局设置

```shell
npm config set registry https://registry.npm.taobao.org
```

### 可用的国内源

``` shell
https://registry.npm.taobao.org
```
