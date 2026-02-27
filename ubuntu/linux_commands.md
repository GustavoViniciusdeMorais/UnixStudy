# Linux Commands
### Find
```bash
# 2>/dev/null for no error output
find / -name "php.ini" 2>/dev/null
find / -type f -name php.ini -exec cat {} \; | head -n 5 2>/dev/null
grep -in 'word.*' $filepath # . is any char and * is as many
ls -lh api/app/controllers/* | grep -i 'user.*'
```
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
### Sed
```bash
# -i.bkp is for backup, 2 is for sec line, g is for global
sed -i.bkp '2s/kali/parrot/g' rock.txt
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
wc -l public/index.php # word count
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
systemctl list-unit-files --state=enabled
systemctl --type=service --state=running
ps aux --sort=-%mem | head -n 5
```
### Env Variables
```bash
nano /etc/environment
OSE='kali'
MYVAR="/var/www/html"
# open new terminal
echo $OSE;
printenv OSE
export OSE='parrot'
unset OSE
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
