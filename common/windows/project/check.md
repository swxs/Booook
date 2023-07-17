# 问题排查

------

- [问题排查](#问题排查)
  - [2023/07/10](#20230710)
    - [SourceTree打开秒退](#sourcetree打开秒退)
  - [2022/09/13](#20220913)
    - [win32clipboard 引用失败](#win32clipboard-引用失败)
  - [2021/03/18](#20210318)
    - [pip 失败](#pip-失败)
    - [vcode无法运行powershell](#vcode无法运行powershell)
  - [2020/11/23](#20201123)
    - [系统蓝屏重启](#系统蓝屏重启)
  - [2020/11/09](#20201109)
    - [本地服务无法远程访问](#本地服务无法远程访问)
  - [2020/08/10](#20200810)
    - [照片应用无法使用](#照片应用无法使用)
    - [windows Terminal 设置管理员权限](#windows-terminal-设置管理员权限)

------

## 2023/07/10

### SourceTree打开秒退

查看日志: `C:\Users\{username}\AppData\Local\Atlassian\SourceTree\sourcetree.log`

发现类似错误

```
ERROR [2023-07-10 11:11:08,264] [1] [Sourcetree.Composition.VSMef.Net48.VSMefCompositionManager] [Log] - Unable to load MEF components
System.InvalidOperationException: 序列不包含任何元素
```

- [https://www.jianshu.com/p/e55e9bbb8e06](https://www.jianshu.com/p/e55e9bbb8e06)

删除缓存后恢复:
```
C:\Users\{username}\AppData\Local\Atlassian\SourceTree.exe_Url_qwtubqskqkldokzbi0nhe5bni1wc0s51\3.4.13.0\Assemblies.cache
C:\Users\{username}\AppData\Local\Atlassian\SourceTree.exe_Url_qwtubqskqkldokzbi0nhe5bni1wc0s51\3.4.13.0\Composition.cache
```


## 2022/09/13

### win32clipboard 引用失败

```
Traceback (most recent call last):
  File ".\mdt_gui.py", line 14, in <module>
    import win32clipboard
ImportError: DLL load failed while importing win32clipboard: 找不到指定的程序。
```

```
# 添加引用规则，在win32clipboard之前需要引用pywintypes
import pywintypes
import win32clipboard
```

## 2021/03/18

### pip 失败 

```
pip is configured with locations that require TLS/SSL, however the ssl module in Python is not available
```

需要添加`Miniconda`相关的环境变量

### vcode无法运行powershell

```
PowerShell：因为在此系统上禁止运行脚本
```

- 查询策略: `get-executionpolicy`
- 设置策略: `set-executionpolicy remotesigned`

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

```ps1
get-appxpackage *photo*
remove-appxpackage {PackageFullName}
```

安装应用
```ps1
Get-AppxPackage | % { Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppxManifest.xml" -verbose }
```

### windows Terminal 设置管理员权限

```sh
PowerShell -Command "Set-ExecutionPolicy RemoteSigned -scope Process; iwr -useb https://raw.githubusercontent.com/gerardog/gsudo/master/installgsudo.ps1 | iex"
```

添加到settings

```sh
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
