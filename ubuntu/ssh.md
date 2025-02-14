# Ssh agent
```sh
ssh-keygen -t ed25519 -C "your_email@example.com"

choose the directory /root/.ssh/, and give the key name of id_user

Start the ssh agent: eval "$(ssh-agent -s)"

Add the identity: ssh-add /root/.ssh/id_user

test connection ssh -T git@github.com
```
```sh
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```
