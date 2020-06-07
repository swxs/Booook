# 凭证存储

---

- [凭证存储](#%e5%87%ad%e8%af%81%e5%ad%98%e5%82%a8)
  - [说明](#%e8%af%b4%e6%98%8e)
  - [示例](#%e7%a4%ba%e4%be%8b)
  - [自定义凭证缓存](#%e8%87%aa%e5%ae%9a%e4%b9%89%e5%87%ad%e8%af%81%e7%bc%93%e5%ad%98)

---

## 说明

如果你使用的是 SSH 方式连接远端，并且设置了一个没有口令的密钥，这样就可以在不输入用户名和密码的情况下安全地传输数据。 然而，这对 HTTP 协议来说是不可能的 —— 每一个连接都是需要用户名和密码的。 这在使用双重认证的情况下会更麻烦，因为你需要输入一个随机生成并且毫无规律的 token 作为密码。

幸运的是，Git 拥有一个凭证系统来处理这个事情。 下面有一些 Git 的选项：

默认所有都不缓存。 每一次连接都会询问你的用户名和密码。

- “cache” 模式会将凭证存放在内存中一段时间。 密码永远不会被存储在磁盘中，并且在15分钟后从内存中清除。

- “store” 模式会将凭证用明文的形式存放在磁盘中，并且永不过期。 这意味着除非你修改了你在 Git 服务器上的密码，否则你永远不需要再次输入你的凭证信息。 这种方式的缺点是你的密码是用明文的方式存放在你的 home 目录下。

如果你使用的是 Mac，Git 还有一种 “osxkeychain” 模式，它会将凭证缓存到你系统用户的钥匙串中。 这种方式将凭证存放在磁盘中，并且永不过期，但是是被加密的，这种加密方式与存放 HTTPS 凭证以及 Safari 的自动填写是相同的。

如果你使用的是 Windows，你可以安装一个叫做 “winstore” 的辅助工具。 这和上面说的 “osxkeychain” 十分类似，但是是使用 Windows Credential Store 来控制敏感信息。 可以在 https://gitcredentialstore.codeplex.com 下载。

你可以设置 Git 的配置来选择上述的一种方式

``` sh
git config --global credential.helper cache
```

部分辅助工具有一些选项。 “store” 模式可以接受一个 --file <path> 参数，可以自定义存放密码的文件路径（默认是 ~/.git-credentials ）。 “cache” 模式有 --timeout <seconds> 参数，可以设置后台进程的存活时间（默认是 “900”，也就是 15 分钟）。 下面是一个配置 “store” 模式自定义路径的例子：

``` sh
git config --global credential.helper store --file ~/.my-credentials
```

Git 甚至允许你配置多个辅助工具。 当查找特定服务器的凭证时，Git 会按顺序查询，并且在找到第一个回答时停止查询。 当保存凭证时，Git 会将用户名和密码发送给 所有 配置列表中的辅助工具，它们会按自己的方式处理用户名和密码。 如果你在闪存上有一个凭证文件，但又希望在该闪存被拔出的情况下使用内存缓存来保存用户名密码，.gitconfig 配置文件如下：

``` sh
[credential]
    helper = store --file /mnt/thumbdrive/.git-credentials
    helper = cache --timeout 30000
```

~/git.store 文件的内容类似：

``` sh
https://bob:s3cre7@mygithost
```

仅仅是一系列包含凭证信息 URL 组成的行。 osxkeychain 和 winstore 辅助工具使用它们后端存储的原生格式，而 cache 使用它的内存格式（其他进程无法读取）。

## 示例

``` sh
echo "http:/uesrname:password@github.com" >> ~/.git-credentials
git config --global credential.helper store
```

## 自定义凭证缓存

已经知道 git-credential-store 之类的是和 Git 是相互独立的程序，就不难理解 Git 凭证辅助工具可以是 任意 程序。 虽然 Git 提供的辅助工具覆盖了大多数常见的使用场景，但并不能满足所有情况。 比如，假设你的整个团队共享一些凭证，也许是在部署时使用。 这些凭证是保存在一个共享目录里，由于这些凭证经常变更，所以你不想把它们复制到你自己的凭证仓库中。 现有的辅助工具无法满足这种情况；来看看我们如何自己实现一个。 这个程序应该拥有几个核心功能：

我们唯一需要关注的行为是 get；store 和 erase 是写操作，所以当接受到这两个请求时我们直接退出即可。

共享的凭证文件格式和 git-credential-store 使用的格式相同。

凭证文件的路径一般是固定的，但我们应该允许用户传入一个自定义路径以防万一。

我们再一次使用 Ruby 来编写这个扩展，但只要 Git 能够执行最终的程序，任何语言都是可以的。 这是我们的凭证辅助工具的完整代码：

``` ruby
#!/usr/bin/env ruby

require 'optparse'

path = File.expand_path '~/.git-credentials' (1)
OptionParser.new do |opts|
    opts.banner = 'USAGE: git-credential-read-only [options] <action>'
    opts.on('-f', '--file PATH', 'Specify path for backing store') do |argpath|
        path = File.expand_path argpath
    end
end.parse!

exit(0) unless ARGV[0].downcase == 'get' (2)
exit(0) unless File.exists? path

known = {} (3)
while line = STDIN.gets
    break if line.strip == ''- 
    k,v = line.strip.split '=', 2
    known[k] = v
end

File.readlines(path).each do |fileline| (4)
    prot,user,pass,host = fileline.scan(/^(.*?):\/\/(.*?):(.*?)@(.*)$/).first
    if prot == known['protocol'] and host == known['host'] then
        puts "protocol=#{prot}"
        puts "host=#{host}"
        puts "username=#{user}"
        puts "password=#{pass}"
        exit(0)
    end
end
```

我们在这里解析命令行参数，允许用户指定输入文件，默认是 ~/.git-credentials.

这个程序只有在接受到 get 行为的请求并且后端存储的文件存在时才会有输出。

这个循环从标准输入读取数据，直到读取到第一个空行。 输入的数据被保存到 known 哈希表中，之后需要用到。

这个循环读取存储文件中的内容，寻找匹配的行。 如果 known 中的协议和主机名与该行相匹配，这个程序输出结果并退出。

我们把这个辅助工具保存为 git-credential-read-only，放到我们的 PATH 路径下并且给予执行权限。 一个交互式会话类似：

``` sh
$ git credential-read-only --file=/mnt/shared/creds get
protocol=https
host=mygithost

protocol=https
host=mygithost
username=bob
password=s3cre7
```

由于这个的名字是 “git-” 开头，所以我们可以在配置值中使用简便的语法：

``` sh
git config --global credential.helper read-only --file /mnt/shared/creds
```
