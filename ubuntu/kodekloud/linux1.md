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
### user data transfer
```bash
find /source/dir -user rose -type f | tar -T - -cf - | (cd /dest/dir && tar -xvf -)
# -T - : Read the file list from stdin (the | input)
# -f - : Write archive to stdout (instead of a file)
# echo "hello" | cat -
# example: find . -user gustavo -type f | tar -cf compres -T -
# creates the compres in the current dir with filtered files

find . -user gustavo -type f | tar -cf compres -T -
# -f compres : Save to file named compres (instead of stdout)
# -T - : Read file list from stdin (the find output)

cd receive/
tar -xvf ../compres

find . -user gustavo -type f | while read file; do echo $file; done
```
### file exec permissions
```bash
chmod 555 /tmp/xfusioncorp.sh
bash /tmp/xfusioncorp.sh
```
