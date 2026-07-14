# Remove root account login
`sudo passwd -l root`
To avoid having this break emergency mode, create into `/etc/systemd/system/rescue.service.d/SYSTEMD_SULOGIN_FORCE.conf`
```
[Service]
Environment=SYSTEMD_SULOGIN_FORCE=1
```

## Show passwd
Create `/etc/sudoers.d/10-pwfeedback`
```
Defaults pwfeedback
```



# Secure faillock
edit `/etc/security/faillock.conf` as follow
deny = 5
fail_interval = 3600
unlock_time = 300

And do (to disable use of faillock):
```bash
sudo chmod 700 /bin/faillock
```

# /boot is world accessible
Set fmask=0077,dmask=0077 in fstab of boot


# Other
sudo ufw enable
sudo lynis audit system # and follow suggestions
ntp

# Other some times
sudo pwck

clamav (+ deamon) for antivirus
arch-audit
