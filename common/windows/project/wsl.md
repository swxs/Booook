# wsl

------

- [wsl](#wsl)
  - [安装](#安装)
    - [Enable the Windows Subsystem for Linux](#enable-the-windows-subsystem-for-linux)
    - [Enable Virtual Machine feature](#enable-virtual-machine-feature)
    - [Download the Linux kernel update package](#download-the-linux-kernel-update-package)
  - [更新](#更新)
  - [安装docker(弃用， 直接转wsl2)](#安装docker弃用-直接转wsl2)
  - [安装 python3](#安装-python3)
  - [修改复制模式](#修改复制模式)
  - [问题处理](#问题处理)
    - [问题: `参考的对象类型不支持尝试的操作。`](#问题-参考的对象类型不支持尝试的操作)

------

## 安装

### Enable the Windows Subsystem for Linux
win+x powershell(管理员)
``` sh
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

### Enable Virtual Machine feature
``` sh
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

### Download the Linux kernel update package
``` sh
wsl --set-default-version 2
wsl --list --verbose
wsl --set-version <distribution name> <versionNumber>
```

- 教程: [https://docs.microsoft.com/en-us/windows/wsl/install-win10](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

## 更新

``` sh
sudo apt-get update
```

## 安装docker(弃用， 直接转wsl2)

- 教程: [https://docs.docker.com/engine/install/ubuntu/#installation-methods](https://docs.docker.com/engine/install/ubuntu/#installation-methods)
- WSL使用docker: [https://blog.jayway.com/2017/04/19/running-docker-on-bash-on-windows/](https://blog.jayway.com/2017/04/19/running-docker-on-bash-on-windows/)
- win10 Home 安装docker: [https://itnext.io/install-docker-on-windows-10-home-d8e621997c1d](https://itnext.io/install-docker-on-windows-10-home-d8e621997c1d)

1. Update the apt package index and install packages to allow apt to use a repository over HTTPS:

    ``` sh
    sudo apt-get update
    sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    ```

2. Add Docker’s official GPG key:

    ``` sh
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    ```

3. Use the following command to set up the stable repository

    ``` sh
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    ```

4. install the latest version of Docker Engine and containerd

    ``` sh
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    ```

    WSL现在用不了docker，主要是用不了systemctl

    1. 尝试windows上启动服务，wsl启动client

    ``` sh
    已检测到虚拟机监控程序。将不显示 Hyper-V 所需的功能。
    ```

    1. Home装不了docker..., 转装docker-toolbox

    ``` sh
    # 关闭Hyper-V
    bcdedit /set {d89bf857-d769-11e9-a69e-3c18a0727e3f} hypervisorlaunchtype OFF

    # 关闭Hyper-V
    bcdedit /set hypervisorlaunchtype off
    # 开启Hyper-V
    bcdedit /set hypervisorlaunchtype auto
    ```

## 安装 python3

``` sh
apt-get install python3-distutils python3-dev build-essential libssl-dev libffi-dev libxml2-dev libxslt1-dev zlib1g-dev python3 python3-pip
```

## 修改复制模式

Right-click on the title bar > Properties
Options tab > Edit options > enable QuickEdit Mode

## 问题处理

### 问题: `参考的对象类型不支持尝试的操作。`

``` sh
netsh winsock reset
```
