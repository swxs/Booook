# 实例

------

- [实例](#实例)
  - [git pull](#git-pull)
  - [将【本地分支】与【远程分支】同步](#将本地分支与远程分支同步)
  - [删除git的追踪](#删除git的追踪)
  - [删除远程分支](#删除远程分支)
  - [同步远程分支列表](#同步远程分支列表)
  - [分支返回到未提交的状态](#分支返回到未提交的状态)
  - [追加commit](#追加commit)
  - [git rebase](#git-rebase)
  - [回退分支, 及回退merge的分支](#回退分支-及回退merge的分支)
  - [删除 stash(损坏的)](#删除-stash损坏的)
  - [统计代码行数](#统计代码行数)
  - [大小写敏感](#大小写敏感)
  - [常用配置](#常用配置)

------

## git pull

``` git
git pull <remote> <branch>
```

## 将【本地分支】与【远程分支】同步

``` git
git branch --set-upstream-to=origin/<branch> <local branch>
```

## 删除git的追踪

``` git
git rm --cache [file]
```

## 删除远程分支

``` git
git -c diff.mnemonicprefix=false -c core.quotepath=false --no-optional-locks branch -D -r origin/<branch>
git -c diff.mnemonicprefix=false -c core.quotepath=false --no-optional-locks push origin :refs/heads/<branch>
```

## 同步远程分支列表

``` git
git remote prune origin
```

## 分支返回到未提交的状态

``` git
git reset --hard <分支>
```

## 追加commit

``` git
git commit --amend
```

## git rebase

``` git
git rebase <target branch> <root branch> <sub branch>

git rebase <分支2>
假设当前在分支1， 自动切换到分支2， 一步步提交分支1的修改， 完成后可以提交

git rebase <target branch> <root branch> <sub branch>
将从<root branch>分出后开始的<sub branch>上的修改在<target branch>重演一遍
```

## 回退分支, 及回退merge的分支

``` git
git revert <分支>
git revert <分支> -m [1,2]

回退到 <1> 状态 （git revert <分支> -m 1）
[m]<1>----|-----[n]<3>----[n`]<4>
          |
[d]<2>----|

下次如何把develop的修改再提交进来呢？
下次 再要合并进来的时候 要先git revert n`<4>
[m]<1>----|-----[n]<3>----[n`]<4>----[n``]<5>
          |
[d]<2>----|

然后合并
[m]<1>----|-----[n]<3>----[n`]<4>----[n``]<5>----|----[l]<7>
          |                                      |
[d]<2>----|-----[e]<6>---------------------------|
```

## 删除 stash(损坏的)

``` git
git reflog delete --rewrite stash@{0}
```

## 统计代码行数

``` git
git log --author="$(git config --get user.name)" --pretty=tformat: --numstat | gawk '{ add += $1 ; subs += $2 ; loc += $1 - $2 } END { printf "added lines: %s removed lines : %s total lines: %s\n",add,subs,loc }' -
```

## 大小写敏感

``` git
git config core.ignorecase false
```

## 常用配置

``` git

```
