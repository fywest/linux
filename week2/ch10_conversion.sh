#!/bin/bash

value=$1

if [ $value -lt 1024 ];then
    echo "less than 1024"
    echo "$value B"
elif [ $value -lt $((1024*1024)) ];then
    echo "less than 1024*1024"
    echo "$(($value/1024)) kB"
elif [ $value -lt $((1024*1024*1024)) ];then
    echo "less than 1024*1024*1024"
    echo "$(($value/((1024*1024)))) MB"
elif [ $value -lt $((1024*1024*1024*1024)) ];then
    echo "less than 1024*1024*1024*1024"
    echo "$(($value/((1024*1024*1024)))) GB"
else
    echo "out of range"
fi
