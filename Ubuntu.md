# Ubuntu

- [UserGroups](./ubuntu/user_groups.md)
- [CronJob](./ubuntu/cronjob.md)
- [Ssh](./ubuntu/ssh.md)

### Add current user permission to files in the folder
```sh
sudo chown -R $USER:$USER .
```
### Search for text inside files
```sh
sudo grep -iR "needle" path/
```
### Manage services start at boot
```sh
systemctl list-unit-files | grep ollama
systemctl disable ollama.service
```
### Hardware infos
```sh
cat /proc/cpuinfo | head
free -lh
df -H
```
