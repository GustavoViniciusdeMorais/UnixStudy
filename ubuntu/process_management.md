# Process Management
```bash
ps -u root --forest -o time,cmd,pid
```
```bash
#!/bin/bash
echo "sleep job"
sleep 30
echo "end job"
```
```bash
./job.sh &

jobs

for val in {1..4}; do ./job.sh & done

jobs

fg %1

bg %1

kill -l

kill %1

pgrep ssh
```
