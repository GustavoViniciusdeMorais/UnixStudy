# User Groups

```sh
useradd -c "r2d2" -m -s /bin/bash rd2d -g root

passwd rd2d

groupadd web

usermod -g web rd2d

groups rd2d
```
