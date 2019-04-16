#!/bin/bash
#root works
cd ~
crontab -l > tasks
echo '* * * * * /home/fywest/git/linux/week2/check_service_solution.sh mysql' >> tasks
crontab tasks
rm tasks
