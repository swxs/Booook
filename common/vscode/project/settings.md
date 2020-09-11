# 常用配置

------

- [常用配置](#常用配置)
  - [系统配置](#系统配置)
    - [不禁止运行脚本](#不禁止运行脚本)
  - [launch.json 配置](#launchjson-配置)
    - [python](#python)

------

## 系统配置

### 不禁止运行脚本

``` sh
set-executionpolicy remotesigned
```

## launch.json 配置

### python
``` json
{
    // 使用 IntelliSense 了解相关属性。 
    // 悬停以查看现有属性的描述。
    // 欲了解更多信息，请访问: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "RUN[MAIN]",
            "type": "python",
            "request": "launch",
            "program": "__main__.py",
            "args": ["8199"],
            "console": "integratedTerminal",
            "justMyCode": false
        }, {
            "name": "RUN[RPC]",
            "type": "python",
            "request": "launch",
            "module": "rpc.main",
            "console": "integratedTerminal",
        }
    ]
}
```
