# 问题排查

------

- [问题排查](#问题排查)
  - [2024/01/24](#20240124)
    - [windows wsl2 无法使用docker](#windows-wsl2-无法使用docker)
      - [弹出如下告警](#弹出如下告警)
  - [2024/01/11](#20240111)
    - [windows11右键使用win10模式](#windows11右键使用win10模式)
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

## 2024/01/24

### windows wsl2 无法使用docker

1. docker desktop 升级到最新版本

2. 确认wsl状态
```
wsl -l -v
```
3. 按照如下issue处理问题
```
Command 'docker' could not be found in this WSL 2 distro error.
```
来源: [https://github.com/docker/for-win/issues/13088#issuecomment-1536365076](https://github.com/docker/for-win/issues/13088#issuecomment-1536365076)

#### 弹出如下告警
```
wsl: 检测到 localhost 代理配置，但未镜像到 WSL。NAT 模式下的 WSL 不支持 localhost 代理。
```

处理方式:

`%USERPROFILE%\.wslconfig` 文件添加如下内容后重启wsl: `wsl -shutdown`

```
[experimental]
autoMemoryReclaim=gradual | dropcache | disabled
networkingMode=mirrored
dnsTunneling=true
firewall=true
autoProxy=true
```

来源: [https://github.com/microsoft/WSL/releases/tag/2.0.0](https://github.com/microsoft/WSL/releases/tag/2.0.0)

## 2024/01/11

### windows11右键使用win10模式
管理员模式输入后重启
```
# 切到老模式
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
# 切到新模式
reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /va /f
```

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
