# CronJobs

Add the schedule of the task:
```sh
crontab -e
```

Check the schedule of the task:
```sh
crontab -l
```
The cronjob will be reloaded when edited with -e

Example of task that runs every minute every day:
```sh
*/1 * * * * echo $(date) > /home/gustavo/text.txt
```
The command was:
```sh
echo $(date) > /home/gustavo/text.txt
```

The service
```sh
service cron status
```

Check for log
```sh
grep CRON /var/log/syslog
```

Run bash from a file
```bash
nano simple.sh
ln -s /home/gustavo/simple.sh /usr/bin/simplesh
simplesh # in crontab
```
