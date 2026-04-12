# Linux 1 kodekloud
### First four tasks
```bash
#!/bin/bash
ssh tony@stapp01 -p 22
sudo su
groupadd nautilus_developers
usermod -G nautilus_developers mohammed

useradd -c "mohammed" -d /var/www/mohammed -s /bin/false mohammed

grep mohammed /etc/passwd
groups mohammed

useradd -c "mariyam" -M -s /bin/false mariyam # no home dir

useradd -c "kirsty" -d /var/www/kirsty -s /bin/false -e 2027-02-17 kirsty # expires
chage -l kirsty

```
### Task to not allow root ssh
```bash
cat /etc/os-release
systemctl status sshd
grep -in ".*PermitRootLogin.*" /etc/ssh/sshd_config
# PermitRootLogin no
nano /etc/ssh/sshd_config
systemctl restart sshd
```
