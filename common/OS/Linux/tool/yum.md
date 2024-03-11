# yum

------

- [yum](#yum)
  - [命令](#命令)
  - [示例](#示例)
    - [安装cmake](#安装cmake)

------

## 命令

来自`yum -h`

| 命令                         | 解释                                                                                                       |
| :--------------------------- | :--------------------------------------------------------------------------------------------------------- |
| check                        | Check for problems in the rpmdb                                                                            |
| check-update                 | Check for available package updates                                                                        |
| clean                        | Remove cached data                                                                                         |
| deplist                      | List a package's dependencies                                                                              |
| distribution-synchronization | Synchronize installed packages to the latest available versions                                            |
| downgrade                    | downgrade a package                                                                                        |
| erase                        | Remove a package or packages from your system                                                              |
| fs                           | Acts on the filesystem data of the host, mainly for removing docs/lanuages for minimal hosts.              |
| fssnapshot                   | Creates filesystem snapshots, or lists/deletes current snapshots.                                          |
| groups                       | Display, or use, the groups information                                                                    |
| help                         | Display a helpful usage message                                                                            |
| history                      | Display, or use, the transaction history                                                                   |
| info                         | Display details about a package or group of packages                                                       |
| install                      | Install a package or packages on your system                                                               |
| list                         | List a package or groups of packages                                                                       |
| load                         | -transaction load a saved transaction from filename                                                        |
| makecache                    | Generate the metadata cache                                                                                |
| provides                     | Find what package provides the given value                                                                 |
| reinstall                    | reinstall a package                                                                                        |
| repo-pkgs                    | Treat a repo. as a group of packages, so we can install/remove all of them                                 |
| repolist                     | Display the configured software repositories                                                               |
| search                       | Search package details for the given string                                                                |
| shell                        | Run an interactive yum shell                                                                               |
| swap                         | Simple way to swap packages, instead of using shell                                                        |
| update                       | Update a package or packages on your system                                                                |
| update-minimal               | Works like upgrade, but goes to the 'newest' package match  which fixes a problem that affects your system |
| updateinfo                   | Acts on repository update information                                                                      |
| upgrade                      | Update packages taking obsoletes into account                                                              |
| version                      | Display a version for the machine and/or available repos.                                                  |


## 示例

### 安装cmake

1. 查询一下yum源中的相关包信息

- `yum search cmake`
- `yum list cmake | grep cmake`

1. 看一下安装状态, 可以知道一下安装之后的命令入口

```
yum provides */cmake
```

3. 安装

```
yum install -y cmake
```

