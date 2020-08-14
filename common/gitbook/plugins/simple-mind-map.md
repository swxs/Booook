# simple-mind-map

---

- [simple-mind-map](#simple-mind-map)
  - [安装](#安装)
  - [配置](#配置)
  - [示例](#示例)
    - [markdown](#markdown)
    - [txtmap](#txtmap)

---

## 安装

``` json
{
    "plugins": ["simple-mind-map"]
}
```

## 配置

## 示例

### markdown

```` sh
{% simplemindmap %}
``` markdown
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
```
{% endsimplemindmap %}
````

```` text
{% simplemindmap type="txtmap" %}
``` markdown
```
{% endsimplemindmap %}
````


### txtmap

```` sh
{% simplemindmap type="txtmap" %}
``` txtmap
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
```
{% endsimplemindmap %}
````

```` text
{% simplemindmap type="txtmap" %}
``` txtmap
```
{% endsimplemindmap %}
````
