# Linux Services
### Tomcat Service
```bash
# at jum host
scp /tmp/ROOT.war banner@stapp03:/home/banner

# at app server
yum update -y && yum install tomcat -y
yum install nano -y

systemctl status tomcat
tomcat version

mv ROOT.war /usr/share/tomcat/webapps/

grep -in ".*port.*" /etc/tomcat/server.xml # line 71
nano /etc/tomcat/server.xml
# port=5000
systemctl restart tomcat

curl http://stapp03:5000
```
### Curl Apache httpd service
```bash
# in jump host
curl http://stapp01:8087
# config services in stapp01
systemctl status httpd

ss -ntulp | grep 8087

ls -lh /etc/ | grep mail

cd /etc/mail

ls -lh | grep ".*cf.*"

grep -in ".*port.*" sendmail.cf

nano sendmail.cf # line 272
#port=28

systemctl restart sendmail

systemctl restart httpd

iptables -I INPUT -p tcp -s 10.244.164.108 --dport 8087 -j ACCEPT

iptables -L

systemctl status iptables
```
