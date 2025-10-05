# Linux Commands
### Dump file write real time
```bash
tail -f echo_file.txt
echo "test 1" >> echo_file.txt
# netcat example
nc -vl 4005 >> nc.txt &
tail -f nc.txt
nc -v localhost 1234
php
```
### Find
```bash
find /etc -name "php"
```
### List Open Files
```bash
lsof -i :80 | grep root
```
### Systemctl
```bash
systemctl status nginx
systemctl disable nginx
systemctl stop nginx
```
### Uptime
```bash
uptime
```
### Top
```bash
top
h
Ctrl L # to search string
```
### Socket Statistics
```bash
ss -ntlp
```
