# TPM
use sbctl (see arch-wiki)


# HYBERNATION
https://rusty-electron.github.io/blog/setting-up-hibernation-in-arch-linux.html

* Create swap and add to fstab
* add resume to HOOKS in /etc/mkinitcpio.conf
* Uncommenting in `/etc/systemd/sleep.conf`: `HibernateMode=shutdown `
* sudo mkinitcpio -P
* restart

# SETTING UP SYSTEMD-BOOT
https://www.addictivetips.com/ubuntu-linux-tips/set-up-systemd-boot-on-arch-linux/
``` blkid /dev/<device> ``` and copy the uuid

file /boot/loader/entries/arch.conf
```
    title Arch Linux
    linux   /vmlinuz-linux
    initrd  /initramfs-linux.img
    options root=UUID=<insert_uuid> quiet loglevel=3 systemd.show_status=0 rw
```

file /boot/loader/loader.conf
```
    default arch
    timeout 4
    console-mode max
    editor no
```

# CACHYOS REPO
See https://wiki.cachyos.org/cachyos_repositories/how_to_add_cachyos_repo/
