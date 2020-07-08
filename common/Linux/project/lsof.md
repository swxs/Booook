# lsof

---

- [lsof](#lsof)
  - [安装](#安装)
  - [命令](#命令)
  - [示例](#示例)
    - [查询一个文件的打开状态](#查询一个文件的打开状态)
    - [查询当前文件下所有文件的状态](#查询当前文件下所有文件的状态)

---

## 安装

`yum install -y lsof`

## 命令

来自`lsof -h`

## 示例

### 查询一个文件的打开状态

`lsof {path}`

### 查询当前文件下所有文件的状态

`lsof +D ./`