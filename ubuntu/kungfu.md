# Kung Fu Tips
```bash
awk -F: '{print $1,$NF}' /etc/passwd | sort | column -t

history | awk '{print $2}' | sort | uniq -c | sort -rn | tail -5

echo "dev ops" | awk '{print $2}'

uptime

!u
```
### modify string with tr
```bash
echo $PATH | tr ':' '\n'
echo "abc" | tr 'a' 'x'
echo "abc" | tr [:lower:] [:upper:]
```
