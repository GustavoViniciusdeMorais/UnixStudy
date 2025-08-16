# Linux Admin

- [UserGroups](./ubuntu/user_groups.md)
- [CronJob](./ubuntu/cronjob.md)
- [Files and Directories](./ubuntu/files_directories.md)
- [Ssh agent client](./ubuntu/ssh.md)
- [Process Management](./ubuntu/process_management.md)

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
