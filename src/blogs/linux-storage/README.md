---
title: Linux Storage
thumbnail: ""
url: "linux-storage"
...

# Linux Storage

## `lsblk` to list all the block devices.

```bash
sda      8:0    0 931.5G  0 disk
├─sda1   8:1    0 465.8G  0 part /mnt/B49635D3963596B8
└─sda2   8:2    0 465.8G  0 part /mnt/8AD6BA3FD6BA2AF9
sdb      8:16   0 119.2G  0 disk
├─sdb1   8:17   0   512M  0 part /boot/efi
└─sdb2   8:18   0 118.8G  0 part /
```

## `fdisk -l` also provides disk information

## `mount` lists all the mounted disks

```bash
/dev/sdb2 on / type ext4 (rw,relatime,errors=remount-ro)
/dev/sdb1 on /boot/efi type vfat (rw,relatime,fmask=0077,dmask=0077,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro)
```
