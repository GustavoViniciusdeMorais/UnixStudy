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
userdel [username] -r
history 10
```
