# Linux

------

- [Linux](#linux)
  - [图谱](#图谱)

------

## 图谱

{% simplemindmap type="txtmap", style={"height":"2000px"} %}
``` txtmap
Linux
    相关网址
        http://www.kernel.org
        http://filezillaproject.org/download.php
        http://www.linux-laptop.net/
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
        内存文件系统
            tmpfs
    Linus Torvalds
    磁盘分区
        MBR
            512Bytes
                主机开机记录区 446Bytes
                分区表 64Bytes
                    主要分区
                    延伸分区 （最多一个）
                        可以分割 逻辑分区
        GPT
            34 LBA (Logical Block Address)
                LBA0 MBR相容区块
                LBA1 GPT表头记录
                LBA2-33 实际记录分区信息处
            最后33LBA 备份
        msdos
    开机检测程序
        BIOS
            MBR
        UEFI
            GPT
    功能
        NAT
        SAMBA
        Mail
        Web
        DHCP
        FTP
    基础工具指令
        man
            -f
                所有的类型
                    whatis
                        root 运行 mandb
            -k
                所有名字包含的
                    apropos
            man [n] command
        info
            H
            Tab
            Enter
            U
            N
            T
            UP
            DOWN
            e
            b
            /
        /usr/share/doc/
        sync
            同步内存数据到硬盘
        shutdown
            -k
            -r
            -h
            -c
        reboot/halt/poweroff
        date
        cal
        bc
        ls
            -a
            -h
            -l
            --full-time
        cd
            .
            ..
            -
            ~
            ~name
        pwd
            -P
        mkdir
            -p
            -m
        rmdir
            -p
        cp
            -a
            -p
            -r
            -f
            -u
            -l
            -s
            -d
        rm
            -r
            -f
        mv
            -r
            -f
            -u
        basename
        dirname
        cat
        tac
        nl
        more
        less
        head
        tail
            -f
            -n
        od
        touch
            创建文件 、 修改文件时间
            -c
            -a
            -m
            -d
            -t
        which
        df
        du
        dumpe2fs
        xfs_info
        cat /proc/filesystem
        ln
            ln -s
        lsblk
        blkid
        parted
            parted /dev/vda print
        gdisk/fdisk
        partprobe
        mknod
        tune2fs
        mkfs
        xfs_repair
        mount
        netstat
    好用的工具指令
        lftp
        lrzsz
        dos2unix
    好用的组合命令
        关闭进程
            ps aux|grep "vim"|grep -v grep|awk '{print $2}'|xargs kill -9
    权限管理
        身份
            使用者
            群组
            其他人
        记录
            /etc/passwd
            /etc/shadow
            /etc/group
        修改文件属性
            chgrp
            chown
            chmod
        文件权限
            SUID
                4
            SGID
                2
            SBIT
                1
            r
                4
            w
                2
            x
                1
    文件搜寻
        which
            可执行文件
        type
        whereis
            -l
            -b
            -m
            -s
            -u
        locate
            updatedb
            -i
                忽略大小写
            -r
                使用正则
            -S
                DB info
        find
            path
            option
                -mtime
                -newer
                -uid
                -gid
                -user
                -group
                -name
                -perm
            action
                -exec  {}\;
    打包压缩
        常用工具
            gzip
                -v
                    显示信息
                -c
                    打印内容
                -d
                    解压
                -t
                -#（number）
            zcat
            zgrep
            bzip2
                -v
                -c
                -d
            bzcat
            xz
                -v
                -c
                -d
                -k
                    保留源文件
            xzcat
            tar
                -t
                    查看文件
                -c
                    创建打包文件
                -x
                    解压缩
                -z
                    gzip
                -j
                    bzip2
                -J
                    xz
                -v
                    显示详细详细
                -f filename
                    设置文件名
                -C
                    解压到特定文件
                -p
                    保留文件权限与属性
                -P
                    保留文件路径
                --exclude
                    排除部分文件
                --newer-mtime
        系统备份
            xfsdump
            xfsrestore
        光盘备份
            mkisofs
            cdrecord
        其他命令
            dd
                if
                of
                bs
                count
            cpio
    VIM
        :sp {filename}
        文字补齐
            [C]x [C]n
                根据文本内容
            [C]x [C]f
                根据目录名
            [C]x [X]o
                根据文件类型
    BASH
        ulimit
        env
        export
        read
        declare
            -i
                数字
            -a
                列表
            -x
                环境变量
            -r
                readonly
        变量处理
            #
                从头删除最短匹配
            ##
                从头删除最长匹配
            %
                从尾删除最短匹配
            %%
                从尾删除最长匹配
            /old/new
                内容替换
            //old/new
                所有内容替换
            var={var-8}
                -
                    变量默认值
                :-
                    默认值
            515
        命令别名
            alias
            unalias
        history
            !n
            !!
            !command
            -w
            -c
            number
        进站信息
            /etc/issue
            /etc/motd
        source
        set
        >, >>, 2>, 2>>, <, <<
        ;, &&, ||
        cut
            -d
                分隔符
            -f
                number
            -c
                number-number
        grep
            -i
            -v
        sort
            -f
                忽略大小写
            -M
                月份
            -n
                数字
            -r
                反向
            -t
                分隔符
            -k
                区间好
        uniq
            -i
                忽略大小写
            -c
                计数
        wc
            -l
                统计行数
            -w
                统计字数
            -m
                统计字符
        tee
            -a
                累加模式
            stdout转存
        tr
            -d
                删除
            -s
                替换
        col
            -x
                tab -> 空格
        join
            -t
                分割符
            -i
            -1
            -2
        paste
        expand
            -t
                空格数
            替换tab成空格
        split
            文件分解成小文件
        xargs
            -n
                使用几个参数
            -p
    RE
        \{ \}
        ^
        $
        grep
            -n
            -a
            -b
            -v
        egrep
            grep -E
        sed
            -n
                安静模式
            -e
            -f
            -r
            -i
                直接修改文件
            动作
                n1
                n2
                a
                    尾部增加
                i
                    头部增加
                c
                    取代
                d
                    删除
                p
                    打印
                s
                    替换
        printf
        awk
            变量
                NF
                    字段数
                NR
                    行数
                FS
                    分割符
            条件
            示例
                last -n 5 |grep -v begins | egrep -v '^$' | awk '{printf $1 "\t FS:" FS "\t lines:" NR "\t columns: " NF "\n"}'
                cat /etc/passwd | awk 'BEGIN {FS=":"} $3 < 10 {printf $1 "\n"}'
        diff
            -b
                忽略单词中的空白数目
            -B
                忽略空白行
            -i
                忽略大小写
            创建补丁
                diff -Naur old new > XX.patch
                o
        patch
            patch -pN < patch_file
            patch -R -pN < patch_file
    SHELL
        test
            -e
            -f
            -d
            -b
            -c
            -S
            -p
            -L
            o
            -r
            -w
            -x
            -u
            -g
            -k
            -s
            o
            -nt
            -ot
            -ef
            o
            -eq
            -ne
            -gt
            -lt
            -ge
            -le
            o
            -z
            -n
            ==
            !=
            o
            -a
            -o
            !
        参数变量
            $0~$n
                $0 脚本名
            $#
                参数量
            $@
                "$1" "$2" "$3"
            $*
                "$1 $2 $3"
        shift
        if []; then { } elif []; then {} else {} fi
        case $ in "") {} ;; "") {};; *) {};; esac
        function fname() {}   **fname $**
        while [] do {} done
        until [] do {} done
        for var in con1 con2con3 ... do {} done
        for ((start; con; step)) do {} done
        $(seq 1 100)
            {1..100}
        sh
            -n
                不执行， 检查语法
            -v
                打印
            -x
                单步打印
    账号管理
        ACL
            setfacl
            getfacl
        visudo
```
{% endsimplemindmap %}
