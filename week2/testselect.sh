#!/bin/bash

PS3="select a num:"
select dir in `ls /home/fywest`
do
    echo -e "you selected : \n $dir"
done
