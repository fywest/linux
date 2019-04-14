#!/bin/bash

n=6
while [ $n -gt 0 ]
do
    echo "out loop $n"
    n=$[ $n-1]
    if [ $n -eq 4 ]
    then
        continue
    fi
    for (( i=2;i>0;i--))
    do echo "this is inside loop $i"
    done
    if [ $n -eq 2 ]
    then
        break
    fi


done
