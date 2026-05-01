## Web Services
### Install LAMP (Linux, Apache, MySQL, PHP)
This task is for later on
```bash
yum update -y && yum install httpd php php-mysqlnd php-fpm -y
sed -i.bkp 's/Listen 80/Listen 8085/g' /etc/httpd/conf/httpd.conf
cat /var/www/html/index.php
systemctl start httpd
# at db server install db server as follow tutorial
# the php script will connect
```
### Config MariaDB
```bash
yum update -y && yum install mariadb-server -y
systemctl enable mariadb.service
mysql_secure_installation
mysql -u root -p
CREATE DATABASE kodekloud_db10;
CREATE USER 'kodekloud_rin'@'localhost' IDENTIFIED BY 'BruCStnMT5';
GRANT ALL PRIVILEGES ON kodekloud_db10.* TO 'kodekloud_rin'@'localhost' IDENTIFIED BY 'BruCStnMT5';
FLUSH PRIVILEGES;
```
### Config Sample WebPages Apache
```bash
# at jump host
scp -r news steve@stapp02:/home/steve/
curl -L http://stapp02:8083/news
# at app host
yum update -y && yum install httpd -y
sed -i.bkp 's/Listen 80/Listen 8083/g' /etc/httpd/conf/httpd.conf
systemctl restart httpd
mv * /var/www/html/
```
