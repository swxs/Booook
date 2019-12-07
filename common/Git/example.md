# example

---

- [example](#example)
  - [git pull](#git-pull)
  - [将【本地分支】与【远程分支】同步](#%e5%b0%86%e6%9c%ac%e5%9c%b0%e5%88%86%e6%94%af%e4%b8%8e%e8%bf%9c%e7%a8%8b%e5%88%86%e6%94%af%e5%90%8c%e6%ad%a5)
  - [删除git的追踪](#%e5%88%a0%e9%99%a4git%e7%9a%84%e8%bf%bd%e8%b8%aa)
  - [同步远程分支列表](#%e5%90%8c%e6%ad%a5%e8%bf%9c%e7%a8%8b%e5%88%86%e6%94%af%e5%88%97%e8%a1%a8)
  - [分支返回到未提交的状态](#%e5%88%86%e6%94%af%e8%bf%94%e5%9b%9e%e5%88%b0%e6%9c%aa%e6%8f%90%e4%ba%a4%e7%9a%84%e7%8a%b6%e6%80%81)
  - [追加commit](#%e8%bf%bd%e5%8a%a0commit)
  - [git rebase](#git-rebase)
  - [回退分支, 及回退merge的分支](#%e5%9b%9e%e9%80%80%e5%88%86%e6%94%af-%e5%8f%8a%e5%9b%9e%e9%80%80merge%e7%9a%84%e5%88%86%e6%94%af)
  - [删除 stash(损坏的)](#%e5%88%a0%e9%99%a4-stash%e6%8d%9f%e5%9d%8f%e7%9a%84)
  - [统计代码行数](#%e7%bb%9f%e8%ae%a1%e4%bb%a3%e7%a0%81%e8%a1%8c%e6%95%b0)

---

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
