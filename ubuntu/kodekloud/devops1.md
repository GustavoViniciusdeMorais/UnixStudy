# Devops 1 kodekloud
```bash
#!/bin/bash
ssh tony@stapp01 -p 22
sudo su
groupadd nautilus_developers
usermod -G nautilus_developers mohammed

useradd -c "mariyam" -M -s /bin/false mariyam # no home dir

useradd -c "kirsty" -d /var/www/kirsty -s /bin/false -e 2027-02-17 kirsty # expires
chage -l kirsty
```
# selinux config
```bash

yum search selinux | grep selinux

yum update

cd / && ls -l | grep selinux

cd selinux

yum install selinux* -y --nobest --skip-broken

grep -in ".*selinux.*" config

nano config
# SELINUX=disabled

```
