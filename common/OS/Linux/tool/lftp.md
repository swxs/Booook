# lftp

------

- [lftp](#lftp)
  - [示例](#示例)

------

## 示例

```sh
# SYNTAX
#    lftp [-d] [-e cmd] [-p port] [-u user[,pass]] [site]
#    lftp -f script_file
#    lftp -c commands
#    lftp --version
#    lftp --help

lftp -p 990 -u <username>,<password> ftps://host

set ftp:ssl-auth TLS 
set ftp:ssl-force true 
set ftp:ssl-protect-list yes 
set ftp:ssl-protect-data yes 
set ftp:ssl-protect-fxp yes 
set ftp:passive-mode off
set ssl:verify-certificate no  

mput filename;
```
