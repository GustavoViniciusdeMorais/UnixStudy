# Essential Commands
- [Ssh agent client](../ssh.md)
```sh
sudo su

chown -R $USER:$USER .

#help
ls --help

journalctl --help

man journalctl

man man

man 1 printf # 3 for library, 1 for function

sudo mandb # load db for apropos
apropos director
apropos -s 1 director # just functions

systemctl # tab twice

# directories
# relative path starts from current folder or ../
ls -alh /usr/ # absolut path begins with /

cd - # without arguments goes to home user
touch file.md

mkdir mydir

cp [source] [destination]

cp -r source/* dest/

mv [source] [destination]

rm [object]

rm -r dir/

stat file.md

# hard link, points to existing file
ln dir1/file.md dir2/file.md

```
