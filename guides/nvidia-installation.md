# Nvidia Installation Guide (for my setup)
* follow https://wiki.archlinux.org/title/NVIDIA for latest updates
1. **Install** nvidia driver : `sudo pacman -S nvidia-open`

2. Load nvidia modules **on early boot** modifying file `/etc/mkinitcpio.conf` as:
    ```sh
    MODULES=(... nvidia nvidia_modeset nvidia_uvm nvidia_drm)
    ```
3. **rebuild** `sudo mkinitcpio -P linux`
4. **reboot**

To enable upgrade to **automatically recompile**, create `/etc/pacman.d/hooks/nvidia.hook`:
```bash
[Trigger]
Operation=Install
Operation=Upgrade
Operation=Remove
Type=Package
# You can remove package(s) that don't apply to your config, e.g. if you only use nvidia-open you can remove nvidia-lts as a Target
Target=nvidia
Target=nvidia-open
Target=nvidia-lts
# If running a different kernel, modify below to match
Target=linux

[Action]
Description=Updating NVIDIA module in initcpio
Depends=mkinitcpio
When=PostTransaction
NeedsTargets
Exec=/bin/sh -c 'while read -r trg; do case $trg in linux*) exit 0; esac; done; /usr/bin/mkinitcpio -P'
```


## Using only on application (Prime-Run)
Install nvidia-prime and use as:
```bash
prime-run <program-to-run>
```

## Cardwire
https://bbs.archlinux.org/viewtopic.php?id=314016
