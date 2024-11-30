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
