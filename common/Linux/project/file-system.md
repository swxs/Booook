# 文件系统

------

- [文件系统](#文件系统)
  - [文件系统](#文件系统-1)
    - [RAW](#raw)
    - [CDFS](#cdfs)
    - [FAT16](#fat16)
    - [FAT32](#fat32)
    - [NTFS](#ntfs)
    - [exFAT](#exfat)
    - [Ext2](#ext2)
    - [Ext3](#ext3)
    - [Ext4](#ext4)
    - [HFS](#hfs)
    - [HFS+](#hfs-1)
    - [Btrfs](#btrfs)
    - [ZFS](#zfs)
  - [挂载](#挂载)
    - [挂载](#挂载-1)
    - [取消挂载](#取消挂载)

------

## 文件系统
### RAW
- 磁盘原始文件系统
- 格式化 ->
### CDFS
- 光盘
- CD-R/CD-RW
### FAT16
- win 9X
- ~4GB 小
- 簇 32KB
### FAT32
- win 2000
- 512MB~32GB 小
- 簇 4KB
### NTFS
- win
- 安全性高， 日志式， 多次读写
- MBR ~2TB
- GPT 无限制
### exFAT
- win 闪存( U盘 )
- 超过4GBU盘默认 NTFS
### Ext2
- linux
### Ext3
- linux
- Ext2 的扩展， 添加了日志
- 最大16TB的文件系统， 单文件最大2TB
### Ext4
- linux
- Ext3 的改进
- 最大1EB的文件系统， 单文件最大16TB
### HFS
- apple
### HFS+
- apple
### Btrfs
- Oracle 提出， 为了取代Ext3
### ZFS


## 挂载

### 挂载

- tmpfs

```sh
mount -t tmpfs -o size=500m tmpfs /mnt/tmp/

vi /etc/fstab
tmpfs /mnt/tmp tmpfs defaults,size=4000M 0 0
```

### 取消挂载             
```
umount /mnt/tmp
```
