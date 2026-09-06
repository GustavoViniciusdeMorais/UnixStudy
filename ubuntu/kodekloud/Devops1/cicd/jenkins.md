# CI CD With Jenkins
### Install
```bash
ssh root@jenkins
cat /etc/*release*
# add jenkins repo following 
# (https://www.jenkins.io/doc/book/installing/linux)
apt update -y
apt install fontconfig openjdk-21-jre -y
wget -h

wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
apt update
apt install jenkins -y
service jenkins status

cat /var/lib/jenkins/secrets/initialAdminPassword
# The next steps are in the jenkins UI

```
