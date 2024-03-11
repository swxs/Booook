# pre-commit

------

- [pre-commit](#pre-commit)
  - [pre-commit](#pre-commit-1)
  - [插件列表](#插件列表)
  - [插件](#插件)
    - [black](#black)
    - [flake8](#flake8)
  - [链接](#链接)

------

## pre-commit

安装git钩子
```sh
pip install pre-commit
pre-commit install
```

初始化下项目
```sh
pre-commit run --all-files
```

自动合并配置
```sh
pre-commit migrate-config
```

自动更新 hooks
```sh
pre-commit autoupdate
```

配置文件`pre-commit-config.yaml`示例

```yaml
repos:
  - repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v3.2.0
    hooks:
    - id: trailing-whitespace
  - repo: https://github.com/ambv/black
    rev: 20.8b1
    hooks:
    - id: black    
```

## 插件列表

| 名称   | 效果         |
| :----- | :----------- |
| black  | 代码格式化   |
| flake8 | 代码格式校验 |

## 插件

### black

配置文件`pyproject.toml`示例

```toml
[tool.black]
line-length = 108
py36 = true
skip-string-normalization = true
include = '\.pyi?$'
exclude = '''
/(
    \.git
  | \.hg
  | \.mypy_cache
  | \.tox
  | \.venv
  | __pycache__
)/
'''
```

### flake8

配置文件`.flake8`示例
```
# file: $PROJ/.flake8
#
# This config expects that the flake8-bugbear extension to be installed.
# bugbear looks at the line length and allows a slight variance as opposed
# to a hard limit.  When it detects excessive line lengths, it returns B950.
# This config looks for B950 and ignores the default flake8 E501 line length error.

[flake8]
max-complexity = 50
max-line-length = 108
select = C,E,F,W,B
ignore = F401,F841,W503,E501,E126
exclude =
    *migrations*,
    *.pyc,
    .git,
    .cover,
    __pycache__,
    */node_modules/*,

# Local Variables:
# mode: conf
# End:
```

## 链接
- pre-commit document: [https://pre-commit.com/#intro](https://pre-commit.com/#intro)
- black document: [https://black.readthedocs.io/en/stable/index.html](https://black.readthedocs.io/en/stable/index.html)
- flake document: [https://flake8.pycqa.org/en/latest/#](https://flake8.pycqa.org/en/latest/#)
- flake8 rules: [https://www.flake8rules.com/](https://www.flake8rules.com/)
