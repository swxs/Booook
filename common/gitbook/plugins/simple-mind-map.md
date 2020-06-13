# simple-mind-map

---

- [simple-mind-map](#simple-mind-map)
  - [安装](#安装)
  - [语法](#语法)
    - [markdown](#markdown)
    - [txtmap](#txtmap)

---

## 安装

``` sh
{
    "plugins": ["simple-mind-map"]
}
```

## 语法

### markdown

``` sh
{% simplemindmap %}
\`\`\`markdown
* simplemindmap
    * config book.json
        * plugins
            * others
            * simple-mind-map
        * pluginsConfig
            * others
            * simple-mind-map
                * type
                * preset
                * linkShape
                * autoFit
                * style
    * custom file.md
        * markdown
            * type
            * preset
            * linkShape
            * autoFit
            * style
        * txtmap
        * json
        * mindmup
\`\`\`
{% endsimplemindmap %}
```

### txtmap

``` sh
{% simplemindmap type="txtmap" %}
\`\`\`txtmap
some
  example
    content
  for
  you
    to
    see
      the
    file
      structure
\`\`\`
{% endsimplemindmap %}
```
