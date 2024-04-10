# 安装

------

- [安装](#安装)
	- [应用下载](#应用下载)
	- [初始化](#初始化)
	- [vim](#vim)
	- [ssh](#ssh)
		- [ssh到服务器](#ssh到服务器)

------

## 应用下载

下载:
- [https://github.com/termux/termux-app/releases/tag/v0.118.0](https://github.com/termux/termux-app/releases/tag/v0.118.0)

## 初始化

`pkg update && pkg upgrade`

## vim

`pkg install vim`

## ssh

### ssh到服务器
`pkg install openssh`

`ssh-keygen -t rsa -b 4096 -C "466565029@qq.com"`

`ssh -i ~/.ssh/id_rsa root@47.100.32.32`

完善下列配置
`~/.ssh/config`

``` sh
Host home
	HostName 47.100.32.32
	Port 22
	User root
	IdentityFile ~/.ssh/id_rsa

Host *
	IdentityFile ~/.ssh/id_rsa
```