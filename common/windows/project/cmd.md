# CMD

------

- [CMD](#cmd)
  - [流程](#流程)
    - [if](#if)
    - [for](#for)
  - [打印](#打印)
  - [参数及扩展](#参数及扩展)
    - [组合示例](#组合示例)
    - [迁移](#迁移)
  - [软链接](#软链接)
  - [任务](#任务)
  - [net](#net)
  - [参考资料](#参考资料)

------


## 流程

### if
``` bat
if exist c:\windows\History\*.* del c:\windows\History\*.*
```

### for

```` bat
for %%i in (set) do echo %%i
for /L %%i in (start, step, end) do echo %%i
for /F %%i in (file) do echo %%i

'''
a.txt
1.1 1.2 1.3
2.1 2.2 2.3
3.1 3.2 3.3
'''

for /F %%i in (a.txt) do echo %%i
'''
1.1 1.2 1.3
2.1 2.2 2.3
3.1 3.2 3.3
'''

for /f "delims= " %%i in (a.txt) do echo %%i
'''
1.1
2.1
3.1
'''

for /f "delims=." %%i in (a.txt) do echo %%i
'''
1
2
3
'''

for /f "tokens=2,3 delims= " %%i in (a.txt) do echo %%i %%j
for /f "tokens=2-3 delims= " %%i in (a.txt) do echo %%i %%j
for /f "tokens=2,* delims= " %%i in (a.txt) do echo %%i %%j
'''
1.2 1.3
2.2 2.3
3.2 3.3
'''

for /f "skip=2 tokens=*" %%i in (a.txt) do echo %%i
'''
3.1 3.2 3.3
'''

for /f "eol=1 tokens=*" %%i in (a.txt) do echo %%i
'''
2.1 2.2 2.3
3.1 3.2 3.3
'''
````

## 打印

``` bat
echo
@echo off
```


## 参数及扩展

| 命令    | 效果                                                                                                                                      |      |
| :------ | :---------------------------------------------------------------------------------------------------------------------------------------- | :--- |
| %0      | 批处理文件本身                                                                                                                            |      |
| %1~9    | 第一~九个参数                                                                                                                             |      |
| %*      | 从第一个参数开始的所有参数                                                                                                                |      |
| %~1     | 删除引号(\")，扩充 %1                                                                                                                     |      |
| %~f1    | 将 %1 扩充到一个完全合格的路径名                                                                                                          |      |
| %~d1    | 仅将 %1 扩充到一个驱动器号                                                                                                                |      |
| %~p1    | 仅将 %1 扩充到一个路径                                                                                                                    |      |
| %~n1    | 仅将 %1 扩充到一个文件名                                                                                                                  |      |
| %~x1    | 仅将 %1 扩充到一个文件扩展名                                                                                                              |      |
| %~s1    | 扩充的路径指含有短名                                                                                                                      |      |
| %~a1    | 将 %1 扩充到文件属性                                                                                                                      |      |
| %~t1    | 将 %1 扩充到文件的日期/时间                                                                                                               |      |
| %~z1    | 将 %1 扩充到文件的大小                                                                                                                    |      |
| %~$PATH | 查找列在 PATH 环境变量的目录，并将 %1扩充到找到的第一个完全合格的名称。如果环境变量名未被定义，或者没有找到文件，此组合键会扩充到空字符串 |      |

### 组合示例
| 命令        | 效果                                                                              |      |
| :---------- | :-------------------------------------------------------------------------------- | :--- |
| %~dp1       | 只将 %1 扩展到驱动器号和路径                                                      |      |
| %~nx1       | 只将 %1 扩展到文件名和扩展名                                                      |      |
| %~dp$PATH:1 | 在列在 PATH 环境变量中的目录里查找 %1，并扩展到找到的第一个文件的驱动器号和路径。 |      |
| %~ftza1     | 将 %1 扩展到类似 DIR 的输出行。                                                   |      |

### 迁移
``` bat
pushd "%~dp0"
REM 这里的root被修改到该文件的地址了
popd
```

## 软链接

**需要是NTFS系统**
``` bat
mklink \j link target
mklink \d

rmlink
```


## 任务

``` bat
tasklist | findstr "2720"
taskkill /f /t /im python.exe
```

## net
``` bat
netstat -aon | findstr "8050"
nbtstat -A 192.168.0.1
ping sz1.tencent.com
```


## 参考资料

教程: [https://www.tutorialspoint.com/batch_script/index.htm](https://www.tutorialspoint.com/batch_script/index.htm)
