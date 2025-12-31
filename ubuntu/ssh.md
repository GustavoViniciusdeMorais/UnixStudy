# Ssh agent

### Send pub key to server admin
```bash
ssh-keygen -t ed25519 -C "gustavo@email.com"

eval "$(ssh-agent -s)"

ssh-add /root/.ssh/id_hack

ssh-add -l # list the loaded key by the agent
# to remove all identities
ssh-add -D

cat /root/.ssh/id_hack.pub

# In server
mkdir /home/gustavo/.ssh/
touch /home/gustavo/.ssh/authorized_keys
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH..." >> /home/gustavo/.ssh/authorized_keys
service ssh restart

# At client
ssh gustavo@[ip] -p [port]
test connection ssh -T git@github.com
```
```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```
