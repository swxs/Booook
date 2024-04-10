# pypi

------

- [pypi](#pypi)
  - [大致流程](#大致流程)
    - [配置文件格式](#配置文件格式)
    - [本地校验](#本地校验)
    - [github action](#github-action)
  - [文档地址](#文档地址)


------

## 大致流程

### 配置文件格式

```toml
[build-system]
requires = ["hatchling"]
build-backend = "hatchling.build"

[project]
name = "productor"
version = "0.1.1"
authors = [
  { name="swxs", email="466565029@qq.com" },
]
description = "简单创建一个可以自动探索子类并加载的工厂"
license = "BSD-2-Clause"
readme = "README.md"
requires-python = ">=3.8"
classifiers = [
    "Programming Language :: Python :: 3",
    "Operating System :: OS Independent",
]

[project.urls]
Homepage = "https://github.com/swxs/swxs-productor"
Issues = "https://github.com/swxs/swxs-productor/issues"
```

### 本地校验

```sh
python -m pip install build twine
python -m build --sdist --wheel --outdir dist/
python -m twine check --strict dist/*
```

### github action

```yml
# This workflow will upload a Python Package using Twine when a release is published
# For more information see: https://packaging.python.org/guides/publishing-package-distribution-releases-using-github-actions-ci-cd-workflows/

name: Upload Release to PyPi

on:
  release:
    types: [published]

jobs:
  deploy:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@master
    - name: Set up Python 3.8
      uses: actions/setup-python@v1
      with:
        python-version: 3.8
    - name: Install pypa/build
      run: >-
        python -m
        pip install
        build
        --user
    - name: Build a binary wheel and a source tarball
      run: >-
        python -m
        build
        --sdist
        --wheel
        --outdir dist/
        .
    - name: Publish distribution 📦 to PyPI
      uses: pypa/gh-action-pypi-publish@master
      with:
        password: ${{ secrets.PYPI_API_TOKEN }}
```

## 文档地址

- [pyproject.toml文档字段说明](https://python-poetry.org/docs/pyproject/)
- [action: pypi-publish](https://github.com/pypa/gh-action-pypi-publish)
