# User Groups

```sh
useradd -c "r2d2" -m -s /bin/bash rd2d -g root

passwd rd2d

groupadd web

usermod -g web rd2d

groups rd2d
```
### System account
```bash
mkdir /opt/gustavo
useradd -r -g root -d /opt/gustavo/ -s /bin/false gussystem -u 97
tail -1 /etc/passwd
userdel gussystem -r
```
### Change file group
```sh
touch text.txt
ls -lh text.txt
chown :web text.txt
chgrp web text.txt
ls -lh text.txt
```
### Delete user
```sh
# -r delete home directory
userdel [username] -r
history 10
```
### Mod user
```bash
tail -n 3 /etc/passwd
usermod -c "test" -g root r2d2
groupadd ninjas
tail -n 3 /etc/group
usermod -c "star wars" -g ninjas -G root r2d2
```
