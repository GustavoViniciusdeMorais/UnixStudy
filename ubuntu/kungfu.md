# Kung Fu Tips
```bash
awk -F: '{print $1,$NF}' /etc/passwd | sort | column -t

history | awk '{print $2}' | sort | uniq -c | sort -rn | tail -5

echo "dev ops" | awk '{print $2}'

uptime

!u

echo "dev ops linux" | cut -d' ' -f2

echo "dev ops linux" | tr "ops" "abc"
```
### modify string with tr
```bash
echo $PATH | tr ':' '\n'
echo "abc" | tr 'a' 'x'
echo "abc" | tr [:lower:] [:upper:]
```
### files diff
```bash
echo "linux" > test1.txt
echo "php" > test2.txt
diff test1.txt test2.txt
```
