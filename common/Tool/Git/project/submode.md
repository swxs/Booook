# 子模块

------

- [子模块](#子模块)
- [使用场景](#使用场景)
- [功能介绍](#功能介绍)
  - [添加子模块](#添加子模块)
  - [初始化子模块](#初始化子模块)
    - [.gitmodules](#gitmodules)
  - [父仓库提交](#父仓库提交)
  - [子模块提交](#子模块提交)
  - [拉取远程子模块的代码到本地](#拉取远程子模块的代码到本地)
    - [直接更新](#直接更新)
  - [本地子模块修改提交到远程](#本地子模块修改提交到远程)
- [其他命令](#其他命令)
  - [批量操作子模块](#批量操作子模块)
    - [查看子模块的签出版本](#查看子模块的签出版本)
  - [删除子模块](#删除子模块)
- [可能会出现的问题](#可能会出现的问题)
  - [主模块提交并推送了改动，而子模块并没有推送](#主模块提交并推送了改动而子模块并没有推送)
  - [在有子模块的项目中切换分支可能会造成麻烦](#在有子模块的项目中切换分支可能会造成麻烦)
  - [提交和获取的问题](#提交和获取的问题)
  - [子模块切换分支](#子模块切换分支)
  - [父仓库中子模块的更新](#父仓库中子模块的更新)
  - [通过http方式拉取代码构建时需要输入子模块账户、密码](#通过http方式拉取代码构建时需要输入子模块账户密码)
  - [其他](#其他)
- [参考](#参考)

------

# 使用场景
一个项目里面的代码分为`基础代码`和`定制化代码`，定制化代码是针对不同客户的，基础代码需要和定制化代码分开管理，部署的时候是作为一个项目一起跑的。

# 功能介绍
submodule 是目前对 git 仓库拆分的已有实现之一。它允许将一个Git仓库作为另一个Git仓库的子目录。能够将另一个仓库克隆到自己的项目中，同时还保持独立的提交。

## 添加子模块
```sh
# 克隆仓库
git clone git@xxxxxx/xxx.git
# 将子仓库添加至父仓库，[]中为子仓库的git url
git submodule add [child1 url]
git submodule add [child2 url]
```
上述操作会将两个子仓库clone到父目录下。

## 初始化子模块
注意，如果远程父仓库中已经存在子模块，我们clone了父仓库之后，子模块==并不会==一并clone下来，只会有一个目录，我们需要初始化子模块并拉取代码
```sh
# 初始化本地配置文件
git submodule init
# 拉取子模块的代码（注意，这将拉取在父仓库中签出的版本）
git submodule update
# 拉取子模块的最新版本, [] 中是可选的
git submodule update --remote [submodule_name]
```
克隆时子模块的初始化和拉取可以合并成一个操作
```sh
git clone git@xxxxxx/xxx.git --recursive
```

### .gitmodules
添加子模块之后，除了子模块之外，还多了一个叫`.gitmodules`的文件，这是一份子模块与路径的映射关系图，git 根据这份文件去识别 submodule。(tips：这个文件是需要被追踪的)

查看一下文件内容：
```sh
[submodule "child1_repo"]
	path = child1_repo
	url = git@github.com:xxx/child1_repo.git
[submodule "child2_repo"]
	path = child2_repo
	url = git@github.com:xxx/child2_repo.git
```
## 父仓库提交
父仓库下（不涉及子模块）操作==同git==

当子模块存在改动的情况下，父仓库会将子模块当前分支下最新的commitId作为一个目录进行记录，而非将它记录成一个子目录或者一个文件。

父目录记录的子模块的改动信息大致如下
```sh
# 子模块当前指向的commitId的信息
Commit	8e182c74182adde49f2b6d192f2a85c50d87f538
Commit Message	add child1_repo
```
子仓库的任何修改反应在parent下就是一次提交的信息，在parent下将这个信息按git流程提交即可。

提交后远端仓库的情况：
![在这里插入图片描述](https://img-blog.csdnimg.cn/20191008190710480.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2JyZWF2b19yYXc=,size_16,color_FFFFFF,t_70)
git页面中子模块的名称格式：

`模块名称 @ 签出时的commitId`

@以及后面签出的commitId在本地不会显示

## 子模块提交
初始化并拉取子模块内容后，其处于一个称作 “游离的 HEAD”（detached HEAD） 的状态（git 提示的是 commitid 而不是分支名）。这个状态下可以正常的 git 操作，但是此时是没有分支进行跟踪的，也就没办法推送代码。

**需要时刻小心子模块是否处于这种状态**，在子模块运行 `git checkout branch` 后即可。

==对于子模块来说，只有它们的**远程 URL** 会被记录在父仓库中，以及它们在主项目中的**本地路径**和**签出的版本**。==

## 拉取远程子模块的代码到本地
子仓库在远程有更改，在本地进行同步（*如果只要修改主仓库的代码，正常的git操作就可以了*），执行
```sh
# 同初始化子模块部分的update操作
 git submodule update --remote [child_repo]
```
这条命令将会拉取子模块中最新的提交。

再次强调的是，我们如果单纯的执行`git submodule update`，我们拉取的将是远程`parent`下最后一次签出的子仓库的版本。

### 直接更新
另外一种更新子仓库的方法就是直接进入其目录下，像任何普通的Git那样进行操作即可。

## 本地子模块修改提交到远程
在子模块目录下就像普通的git那样操作就好了（==注意子模块是否有checkout到某个分支上，没有的话需要先checkout，否则容易丢失你的修改！==）


# 其他命令

## 批量操作子模块
可以使用`foreach`命令对子模块进行批量操作
举例：
```sh
 git submodule foreach 'git checkout -b featureA' 
```
### 查看子模块的签出版本
```sh
git submodule status
...
+3557a0e0f7280fb3aba18fb9035d204c7de6344f   lib/ToProgress (0.1.1)
```
通过上述命令，我们可以查看子模块的哪一个版本在当前被签出了。
## 删除子模块
我们可以手动对子模块进行删除，但这会儿打乱配置文件（除非你很小心）
```sh
git submodule deinit [child]
git rm [child]
git status
...
    modified:   .gitmodules
    deleted:    child
```
使用 `git submodule deinit`，我们可以确保从配置文件中完全地删除一个子模块。
使用 `git rm` ，我们可以最终删除这个子模块的文件，包括一些其它废弃的部分。

提交这些改动，这个子模块就会从你的项目中被彻底地删除了。

[其他语法传送门](https://www.yiibai.com/git/git_submodule.html)

# 可能会出现的问题
Git对于子模块的管理相对来说比较复杂。当然出现异常的情况也是不可避免的，我们来看看在使用git submodule的过程中可能会出哪些问题。
## 主模块提交并推送了改动，而子模块并没有推送
如果我们在主仓库中提交并推送但并不推送子模块上的改动，其他人尝试更新子模块的人会遇到麻烦，因为他们无法得到依赖的子模块改动。那些改动只存在于我们本地的拷贝中。

可以使用如下命令检查子模块的改动是否提交
```sh
git push --recurse-submodules=check  # 如果子模块没有提交，会直接报错
# or
git push --recurse-submodules=on-demand  # 如果子模块没有提交，会尝试提交，提交不成功同时会阻止主仓库的推送
```
## 在有子模块的项目中切换分支可能会造成麻烦
 如果你创建一个新分支，在其中添加一个子模块，之后切换到没有该子模块的分支上时，你仍然会有一个还未跟踪的子模块目录，这时候如果不小心提交了这个子模块（git commit -am "message"），就会有问题了。
## 提交和获取的问题
对子模块做了修改，需要先推送子模块再主模块，同时拉取的时候也需要先主模块，再子模块。
## 子模块切换分支
对子模块做本地修改需要先检出分支，否则有可能在 **“游离的 HEAD”** 上做修改。
## 父仓库中子模块的更新
如果你的同事更新了 submodule，然后更新了父项目中依赖的版本号。你需要在 `git pull` 之后，调用 `git submodule update` 来更新 submodule 信息。这儿的坑在于，如果你 `git pull` 之后，忘记了调用 `git submodule update`，那么你极有可能再次把==旧的==submodule 依赖信息提交上去（使用 `git submit -am "message"` 或者 `git add . `提交的人会遇到这种事）。
## 通过http方式拉取代码构建时需要输入子模块账户、密码
查看[git 存储凭证](./git&#32;存储凭证.md)
## 其他
另外还有别的可能出现的问题（e.g.将子目录转换成子模块、*git submodule update failed*等）


# 参考
[git子模块](https://git-scm.com/book/zh/v2/Git-%E5%B7%A5%E5%85%B7-%E5%AD%90%E6%A8%A1%E5%9D%97)

[git submodule(CSDN)](https://blog.csdn.net/jessicaiu/article/details/83818148)

[子模块 - Git Tower](https://www.git-tower.com/learn/git/ebook/cn/command-line/advanced-topics/submodules)