# PERFORMANCE

## GENERAL
* **long startup times** use `systemd-analyze blame`

# ASUS Laptop tools
1. **asusctl, supergfxctl** (need to be enabled), rog-control-center (or my tool)
2. **tlp** install and enable, can be configured via tlpui
    * need to avoid collision with auto-cpufreq
    * need to disable usb-autosuspend
3. **auto-cpufreq**: install and enable

## REFLECTOR
```bash
sudo reflector --threads 64 --save /etc/pacman.d/mirrorlist --protocol https --latest 200 --score 50 --fastest 20 --sort rate --country Italy
```

## Profile on AC to quiet
sudo nano /etc/asusd/asusd.ron
``` change_throttle_policy_on_ac: true ```
``` change_throttle_policy_on_bat: true ```
and then
``` asusctl profile -a Quiet ```
``` asusctl profile -b Quiet ```
also edit to prevent problem to
``` disable_nvidia_powerd_on_battery: false```

## Powertop
Install powertop (for suggestions)
write to `/etc/systemd/system/powertop-tuning.service` (any name is fine) the following and thenenable it by `sudo systemctl enable --now powertop-tuning`

```bash
[Unit]
Description=Powertop tunings

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/bin/powertop --auto-tune
ExecStartPost=/usr/bin/bash -c '/usr/bin/echo on > $(grep -Rl "Wired Mouse" /sys/bus/usb/devices/*/product | sed "s/product/power\/control/") || true'

[Install]
WantedBy=multi-user.target
```




