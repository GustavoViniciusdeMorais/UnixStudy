# Files and Directories

### Permissions
```
r = 4, w = 2, x = 1
```
### mod access
```bash
mkdir ninjas && cd ninjas

nano list.ninjas

ls -lh

chmod 755 list.ninjas

ls -lh --color

while read ninja; do echo $ninja; done < list.ninjas

cd ../ && rm -rf ninjas
```
### mod group
```bash
groupadd ninjas

usermod -G ninjas r2d2

groups r2d2

chgrp ninjas list.ninjas

ls -lh --color
```
