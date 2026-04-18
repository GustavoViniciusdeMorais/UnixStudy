# Devops 1 kodekloud
### servers
```bash
ssh tony@stapp01 -p 22
ssh steve@stapp02 -p 22
ssh banner@stapp03 -p 22
```
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
### selinux config
```bash

yum search selinux | grep selinux

yum update

cd /etc && ls -l | grep selinux

cd selinux

yum install selinux* -y --nobest --skip-broken

grep -in ".*selinux.*" config

nano config
# SELINUX=disabled

```
### simple cronjob
```bash
yum update -y && yum install cronie -y && systemctl start crond

systemctl status crond

crontab -e
# press i, then press esc, then press :wq

*/5 * * * * echo hello > /tmp/cron_text
* * * * * echo $(date) >> /tmp/date.txt

echo $(date) >> /tmp/date.txt

crontab -l

cat /tmp/cron_text
cat /tmp/date.txt

ssh steve@stapp02 -p 22 'cat /tmp/cron_text'

```
### ssh pub key login
```bash

ssh-keygen -t rsa
pwd
cat /home/thor/.ssh/id_rsa.pub

ssh tony@stapp01 -p 22

cd /home/tony
mkdir .ssh
cat > .ssh/authorized_keys
# paste the pub key then typ Ctrl C

ssh tony@stapp01 -p 22 # without password

```
### install ansible
```bash
sudo su
hostname && whoami
pip3 install ansible==4.7.0
# exit root
ansible --version
which ansible
```
