#!/bin/bash

service_name=$1
echo "<----------------$service_name---------------->" #>> status.txt

if [ ! -f "/etc/init.d/$service_name" ]; then
    echo "Error:Service Not Found"
    exit 1
fi

sudo service $service_name status &>> status.txt 
retVal=$?
if [ $retVal -eq 0  ]; then
    echo "is Running"
else
    sudo service $service_name start &>> status.txt 
    echo "Restarting"
fi
