# Linux 1 Advanceds
### SSH (scp) Copy file to server
```bash
scp /tmp/nautilus.txt.gpg steve@stapp02:/home/web
```
### crontab access
```bash
echo "user1name" >> /etc/cron.deny
echo "user2name" >> /etc/cron.allow
```
### gui booting default
```bash
systemctl get-default
ls -lh /etc/systemd/system | grep -i ".*graph.*"
systemctl set-default graphical.target
```
