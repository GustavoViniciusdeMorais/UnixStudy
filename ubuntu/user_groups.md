# User Groups

```sh
useradd -c "r2d2" -m -s /bin/bash rd2d -g root

passwd rd2d

groupadd web

usermod -g web rd2d

groups rd2d
```
### Change file group
```sh
touch text.txt
ls -lh text.txt
chown :web text.txt
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
