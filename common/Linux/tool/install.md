# install

------

- [install](#install)
  - [补充说明](#补充说明)
  - [语法](#语法)
  - [选项](#选项)
  - [实例](#实例)


------

安装或升级软件或备份数据

## 补充说明

`install`命令的作用是安装或升级软件或备份数据，它的使用权限是所有用户。`install`命令和`cp`命令类似，都可以将文件/目录拷贝到指定的地点。但是，`install`允许你控制目标文件的属性。`install`通常用于程序的`makefile`，使用它来将程序拷贝到目标（安装）目录。

## 语法

```
install [OPTION]... [-T] SOURCE DEST
install [OPTION]... SOURCE... DIRECTORY
install [OPTION]... -t DIRECTORY SOURCE...
install [OPTION]... -d DIRECTORY...
```
在前两种格式中，会将<来源>复制至<目的地>或将多个<来源>文件复制至已存在的<目录>，同时设定权限模式及所有者/所属组。在第三种格式中，会创建所有指定的目录及它们的主目录。长选项必须用的参数在使用短选项时也是必须的。

## 选项

```
--backup[=CONTROL]：为每个已存在的目的地文件进行备份。
-b：类似 --backup，但不接受任何参数。
-d，--directory：所有参数都作为目录处理，而且会创建指定目录的所有主目录。
-D：创建<目的地>前的所有主目录，然后将<来源>复制至 <目的地>；在第一种使用格式中有用。
-g，--group=组：自行设定所属组，而不是进程目前的所属组。
-m，--mode=模式：自行设定权限模式 (像chmod)，而不是rwxr-xr-x。
-o，--owner=所有者：自行设定所有者 (只适用于超级用户)。
-p，--preserve-timestamps：以<来源>文件的访问/修改时间作为相应的目的地文件的时间属性。
-s，--strip：用strip命令删除symbol table，只适用于第一及第二种使用格式。
-S，--suffix=后缀：自行指定备份文件的<后缀>。
-v，--verbose：处理每个文件/目录时印出名称。
--help：显示此帮助信息并离开。
--version：显示版本信息并离开。
```

## 实例

> `install -d [option] DIRECTORY [DIRECTORY...] 支持多个，类似mkdir -p支持递归。`

例如：install -d a/b/c e/f结果和mkdir -p a/b/c e/f一样。

> `install [option] SOURCE DEST`

复制SOURCE（文件）到 DEST（文件）：

有用选项`-D`：

```
install -D x a/b/c
```

效果类似： `mkdir -p a/b && cp x a/b/c`

> `install [option] SOURCE [SOURCE...] DIRECTORY`

复制多个SOURCE（文件）到 DIRECTORY（目录）：

```
install a/* d
```

其中d是目录。