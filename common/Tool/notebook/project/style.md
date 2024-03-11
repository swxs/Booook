# 样式

------

- [样式](#样式)
  - [自定义](#自定义)
  - [链接](#链接)

------

## 自定义

`jupyter --config-dir`

```sh
mkdir custom
vim custom/custom.css
```

```css
@font-face {
  font-family: 'Fira Code';
  src: url("https://cdn.rawgit.com/dunovank/jupyter-themes/1e851888/jupyterthemes/fonts/monospace/firacode/firacode.otf") format("opentype");
}

.CodeMirror {
  font-family: 'Fira Code';
  font-variant-ligatures: initial;
}

.cm-string {
    font-variant-ligatures: none;
}
```

## 链接

- 修改字体:[http://www.abarbon.com/posts/firacode-font-on-jupyter](http://www.abarbon.com/posts/firacode-font-on-jupyter)
