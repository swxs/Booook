# 2to3

------

- [2to3](#2to3)
  - [python2to3](#python2to3)
  - [编码](#编码)

------

## python2to3

```sh
2to3 --output-dir=[output_dirpath] -W -n [input_dirpath]
```

## 编码
```
  字符编码
      ascii
      utf8
          1）对于单字节的符号，字节的第一位设为0，后面7位为这个符号的unicode码。因此对于英语字母，UTF-8编码和ASCII码是相同的。 
            2）对于n字节的符号（n>1），第一个字节的前n位都设为1，第n+1位设为0，后面字节的前两位一律设为10。剩下的没有提及的二进制位，全部为这个符号的unicode码。
      utf16
      utf32
      GB2312
      GBK
      GB18030
  编码规范
      unicode
  转换
      decode
          方法
              str.decode
              unicode
          用处
              str->unicode
      encode
          方法
              unicode.encode
          用处
              unicode->str
  其他
      都派生于basestring
      sys.setdefaultencoding
```
