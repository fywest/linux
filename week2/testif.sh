#!/bin/bash

read -p "Input num:" a
if [ $a -gt 7 ];then
    echo "more 7"

elif [ $a -eq 7 ];then
    echo "equal 7"

elif [ $a -lt 7 ];then
    echo "less 7"
else
    echo "no here"
fi
