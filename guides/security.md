# Remove root account login
edit `/etc/passwd` as follow:
`root:x:0:0::/root:/usr/sbin/nologin`

# Secure faillock
edit `/etc/security/faillock.conf` as follow
deny = 5
fail_interval = 3600
unlock_time = 300

And do (to disable use of faillock):
```bash
sudo chmod 700 /bin/faillock
```
