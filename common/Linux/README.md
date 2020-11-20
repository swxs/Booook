# Linux

------

- [Linux](#linux)
  - [图谱](#图谱)
  - [文档:](#文档)

------

## 图谱

{% simplemindmap type="txtmap", style={"height":"1000px"} %}
``` txtmap
硬件
    主板
    CPU
        RISC 精简指令集
        CISC 复杂指令集
            x86
    内存
        DRAM
    硬盘
    显卡
    输入设备
    输出设备
文件系统
    磁盘分区
        MBR
            开机检测程序
                BIOS
            512Bytes
                主机开机记录区 446Bytes
                分区表 64Bytes
                    主要分区
                    延伸分区 （最多一个）
                        可以分割 逻辑分区
        GPT
            开机检测程序
                UEFI
            34 LBA (Logical Block Address)
                LBA0 MBR相容区块
                LBA1 GPT表头记录
                LBA2-33 实际记录分区信息处
            最后33LBA 备份
        msdos
    内存文件系统
        tmpfs        
```
{% endsimplemindmap %}

## 文档:

- [http://www.kernel.org](http://www.kernel.org)
- [http://filezillaproject.org/download.php](http://filezillaproject.org/download.php)  
- [http://www.linux-laptop.net/](http://www.linux-laptop.net/)
