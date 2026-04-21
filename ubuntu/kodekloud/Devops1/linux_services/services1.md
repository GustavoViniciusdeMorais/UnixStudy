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
