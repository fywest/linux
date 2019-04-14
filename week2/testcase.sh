#!/bin/bash

read -p "Input month:" a

case $a in
1|2|3)
    echo "this is the first quarter";;
4|5|6)
    echo "this is the second quarter";;
7|8|9)
    echo "this is the third quarter";;
11|12|10)
    echo "this is the fourth quarter";;
*)
    echo "input error";;
esac
