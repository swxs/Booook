# 问题排查

------

- [问题排查](#问题排查)
  - [2020/08/10](#20200810)
    - [照片应用无法使用](#照片应用无法使用)
    - [windows Terminal 设置管理员权限](#windows-terminal-设置管理员权限)

------

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
