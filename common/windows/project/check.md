# 问题排查

------

- [问题排查](#问题排查)
  - [2020/11/23](#20201123)
    - [系统蓝屏重启](#系统蓝屏重启)
  - [2020/11/09](#20201109)
    - [本地服务无法远程访问](#本地服务无法远程访问)
  - [2020/08/10](#20200810)
    - [照片应用无法使用](#照片应用无法使用)
    - [windows Terminal 设置管理员权限](#windows-terminal-设置管理员权限)

------

## 2020/11/23

### 系统蓝屏重启

win + x -> 事件查看器/windows 日志/系统

查看有如下几个错误:
- 由于在创建转储期间出错，创建转储文件失败。

  来源: volmgr

  事件ID: 161

    ```
    并不是因为这个事件导致的蓝屏。出现这个事件是因为在win10蓝屏之后，系统会尝试创建一个转储文件，这个文件包含了蓝屏的详细信息。如果转储文件创建不成功就会出现这个错误。然而真正导致你蓝屏的应该是其他的原因
    ```
    - [https://www.zhihu.com/question/389864585](https://www.zhihu.com/question/389864585)
    - [https://answers.microsoft.com/zh-hans/windows/forum/all/%E7%94%B1%E4%BA%8E%E5%9C%A8%E5%88%9B%E5%BB%BA/b50a6826-a31d-42ad-9322-1f91fe265ef4](https://answers.microsoft.com/zh-hans/windows/forum/all/%E7%94%B1%E4%BA%8E%E5%9C%A8%E5%88%9B%E5%BB%BA/b50a6826-a31d-42ad-9322-1f91fe265ef4)

  我的电脑>>属性 > 关于 > 高级系统设置 > 高级 >>> 小内存存储 `%SystemRoot%\Minidump`

- 上一次系统的 16:02:44 在 ‎2020/‎11/‎23 上的关闭是意外的。

  来源: EventLog

  事件ID: 6008

- 创建 TLS 客户端 凭据时发生严重错误。内部错误状态为 10013。

  来源: Schannel

  事件ID: 36871

## 2020/11/09

### 本地服务无法远程访问

Windows Denfener 开放端口

入站规则 -> 新建规则 -> 端口

## 2020/08/10

### 照片应用无法使用

卸载应用

``` ps1
get-appxpackage *photo*
remove-appxpackage {PackageFullName}
```

安装应用
``` ps1
Get-AppxPackage | % { Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppxManifest.xml" -verbose }
```

### windows Terminal 设置管理员权限

``` sh
PowerShell -Command "Set-ExecutionPolicy RemoteSigned -scope Process; iwr -useb https://raw.githubusercontent.com/gerardog/gsudo/master/installgsudo.ps1 | iex"
```

添加到settings

``` sh
{
    "guid": "{41dd7a51-f0e1-4420-a2ec-1a7130b7e950}",
    "name": "Windows PowerShell Elevated",
    "commandline": "gsudo.exe powershell.exe",
    "hidden": false,
    "colorScheme": "Solarized Dark",
    "fontFace": "Fira Code",
    "icon" : "https://i.imgur.com/Giuj3FT.png"
},
```

文档: [https://blog.csdn.net/weixin_39858881/article/details/107026065](https://blog.csdn.net/weixin_39858881/article/details/107026065)
