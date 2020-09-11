# github

------

- [github](#github)
  - [使用travis-ci自动化构建](#使用travis-ci自动化构建)
    - [配置github](#配置github)
    - [配置travis-ci](#配置travis-ci)
    - [配置脚本](#配置脚本)

------

## 使用travis-ci自动化构建

### 配置github

- 开放github pages
  
  打开项目 -> settings -> Options -> GitHub Pages -> source: gh-pages: branch
  
- 注册服务token

  用户 -> settings -> Developer settings -> Personal access tokens -> Generate new token


### 配置travis-ci

- [https://travis-ci.org/](https://travis-ci.org/)

![配置](/static/gitbook/travis.PNG)

### 配置脚本

1. 创建 .travis.yml
2. 编写以下内容
``` yml
branches:  
    only:  
        - master    # 构建的分支
cache:  
    directories:  
        - node_modules # 依赖缓存的目录
before_install:
    - export TZ='Asia/Shanghai'  # 设置时区
install: 
    - npm install -g gitbook-cli # 安装编译工具
    - gitbook install
script:
    - gitbook build
deploy:  
    provider: pages  
    skip-cleanup: true  
    github-token: $GITHUB_TOKEN # github 上的token环境变量 
    local-dir: ./_book/ ## 根据情况自定义到静态文件输出目录  
    target-branch: gh-pages  
    verbose: true  
    on:    
        branch: master
```
