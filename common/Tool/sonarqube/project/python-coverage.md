# Python用例覆盖率

------

- [Python用例覆盖率](#python用例覆盖率)
  - [coverage](#coverage)
  - [配置](#配置)

------

## coverage

使用`coverage run` 代替 `python`

生成`coverage xml` 生成 `coverage.xml` 文件，用来解析

## 配置

添加`sonar-project.properties`配置项

```
sonar.python.coverage.reportPaths=**/coverage.xml
sonar.coverage.exclusions=apps/,rpc/,rpc_apps/,**/*.xml
```