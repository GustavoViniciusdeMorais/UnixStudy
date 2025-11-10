# Linux Commands
### Dump file write real time
```bash
tail -f echo_file.txt
echo "test 1" >> echo_file.txt
# netcat example
nc -vl 4005 >> nc.txt &
tail -f nc.txt
nc -v localhost 4005
php
```
### Find
```bash
find /etc -name "php"
```
### CLI Coding
```bash
php -r "print_r(strlen('linux'));" && echo ""
```
### AWK Coding and piping
```bash
echo "LINUX" | figlet $1
alias | grep my
echo "abcdef" | awk '{print length($1)}'
echo "test" | awk '{if (length($1) > 2) print $1}'
```
### Tips
```bash
cat rock.txt | grep [at] | sort -r
[ ! -d backup1 ] && echo "dir not exists"
ose="kali linux"
 echo ${ose:0:3}
```
### Systemctl
```bash
systemctl status nginx
systemctl disable nginx
systemctl stop nginx
```
### Optmize
```bash
apt update && apt upgrade -y
apt list --installed
apt remove package
apt purge package
apt autoremove
apt clean
journalctl --vacuum-time=2weeks
df -h
du -sh /home/gustavo/* | sort -h
```
### Uptime
```bash
uptime
```
### JSON
```bash
apt install jq -y
nano ninja.json
cat ninja.json | jq .
cat ninja.json | jq -c .
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
### List Open Files
```bash
lsof -i :80 | grep root
```
