# RPM

---

- [RPM](#rpm)
  - [介绍](#介绍)
  - [APT-GET](#apt-get)

---

## 介绍

    在Linux 操作系统中，有一个系统软件包，它的功能类似于Windows里面的“添加/删除程序”，但是功能又比“添加/删除程序”强很多，它就是 Red Hat Package Manager(简称RPM)。此工具包最先是由Red Hat公司推出的，后来被其他Linux开发商所借用。由于它为Linux使用者省去了很多时间，所以被广泛应用于在Linux下安装、删除软件。下面就 给大家介绍一下它的具体使用方法。

1. 我们得到一个新软件，在安装之前，一般都要先查看一下这个软件包里有什么内容，假设这个文件是：Linux-1.4-6.i368.rpm，我们可以用这条命令查看：

rpm -qpi Linux-1.4-6.i368.rpm

系统将会列出这个软件包的详细资料，包括含有多少个文件、各文件名称、文件大小、创建时间、编译日期等信息。

2. 上面列出的所有文件在安装时不一定全部安装，就像Windows下程序的安装方式分为典型、完全、自定义一样，Linux也会让你选择安装方式，此时我们可以用下面这条命令查看软件包将会在系统里安装哪些部分，以方便我们的选择：

rpm -qpl Linux-1.4-6.i368.rpm

3. 选择安装方式后，开始安装。我们可以用rpm-ivh Linux-1.4-6.i368.rpm命令安装此软件。在安装过程中，若系统提示此软件已安装过或因其他原因无法继续安装，但若我们确实想执行安装命 令，可以在 -ivh后加一参数“-replacepkgs”：

rpm -ivh -replacepkgs Linux-1.4-6.i368.rpm

4. 有时我们卸载某个安装过的软件，只需执行rpm-e <文件名>;命令即可。

5. 对低版本软件进行升级是提高其功能的好办法，这样可以省去我们卸载后再安装新软件的麻烦，要升级某个软件，只须执行如下命令：rpm -uvh <文件名>;，注意：此时的文件名必须是要升级软件的升级补丁

6. 另外一个安装软件的方法可谓是Linux的独到之处，同时也是RMP强大功能的一个表现：通过FTP站点直接在线安装软件。当找到含有你所需软件的站点并 与此网站连接后，执行下面的命令即可实现在线安装，譬如在线安装Linux-1.4-6.i368.rpm，可以用命令：

rpm -i ftp://ftp.pht.com/pub/linux/redhat/...-1.4-6.i368.rpm

7. 在我们使用电脑过程中，难免会有误操作，若我们误删了几个文件而影响了系统的性能时，怎样查找到底少了哪些文件呢?RPM软件包提供了一个查找损坏文件的 功能，执行此命令：rpm -Va即可，Linux将为你列出所有损坏的文件。你可以通过Linux的安装光盘进行修复。

8. Linux系统中文件繁多，在使用过程中，难免会碰到我们不认识的文件，在Windows下我们可以用“开始/查找”菜单快速判断某个文件属于哪个文件夹，在Linux中，下面这条命令行可以帮助我们快速判定某个文件属于哪个软件包：

rpm -qf <文件名>;

9. 当每个软件包安装在Linux系统后，安装文件都会到RPM数据库中“报到”，所以，我们要查询某个已安装软件的属性时，只需到此数据库中查找即可。注意：此时的查询命令不同于1和8介绍的查询，这种方法只适用于已安装过的软件包！命令格式：

rpm -参数　<文件名>;

## APT-GET

apt-get update——在修改/etc/apt/sources.list或者/etc/apt/preferences之后运行该命令。此外您需要定期运行这一命令以确保您的软件包列表是最新的。 
apt-get install packagename——安装一个新软件包（参见下文的aptitude） 
apt-get remove packagename——卸载一个已安装的软件包（保留配置文件） 
apt-get --purge remove packagename——卸载一个已安装的软件包（删除配置文件） 
dpkg --force-all --purge packagename 有些软件很难卸载，而且还阻止了别的软件的应用，就可以用这个，不过有点冒险。 
apt-get autoclean apt会把已装或已卸的软件都备份在硬盘上，所以如果需要空间的话，可以让这个命令来删除你已经删掉的软件 
apt-get clean 这个命令会把安装的软件的备份也删除，不过这样不会影响软件的使用的。 
apt-get upgrade——更新所有已安装的软件包 
apt-get dist-upgrade——将系统升级到新版本 
apt-cache search string——在软件包列表中搜索字符串 
dpkg -l package-name-pattern——列出所有与模式相匹配的软件包。如果您不知道软件包的全名，您可以使用“*package-name-pattern*”。 
aptitude——详细查看已安装或可用的软件包。与apt-get类似，aptitude可以通过命令行方式调用，但仅限于某些命令——最常见的有安装和卸载命令。由于aptitude比apt-get了解更多信息，可以说它更适合用来进行安装和卸载。 
apt-cache showpkg pkgs——显示软件包信息。 
apt-cache dumpavail——打印可用软件包列表。 
apt-cache show pkgs——显示软件包记录，类似于dpkg –print-avail。 
apt-cache pkgnames——打印软件包列表中所有软件包的名称。 
dpkg -S file——这个文件属于哪个已安装软件包。 
dpkg -L package——列出软件包中的所有文件。 
apt-file search filename——查找包含特定文件的软件包（不一定是已安装的），这些文件的文件名中含有指定的字符串。apt-file是一个独立的软件包。您必须 先使用apt-get install来安装它，然后运行apt-file update。如果apt-file search filename输出的内容太多，您可以尝试使用apt-file search filename | grep -w filename（只显示指定字符串作为完整的单词出现在其中的那些文件名）或者类似方法，例如：apt-file search filename | grep /bin/（只显示位于诸如/bin或/usr/bin这些文件夹中的文件，如果您要查找的是某个特定的执行文件的话，这样做是有帮助的）。