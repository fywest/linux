#!/bin/bash
service=$1
sudo service "$service" status
status=$?

case $status in 
0)
    echo "is Running"
    ;;
1)
    echo "Error:Service Not Found"
    ;;
3)
    echo "Restarting"
    sudo service "$service" start
esac

exit $status
