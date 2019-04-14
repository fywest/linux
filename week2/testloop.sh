#!/bin/bash

sum=0
for i in {1..10}
do 
    echo $i
    let "sum+=i"
done
echo "sum is : $sum"

sum=0
num=1
while(($num <= 10))
    do 
        let "sum+=num"
        let "num++"
done
echo "the sum is $sum"

sum=0
num=1
until(($num > 10))
do 
    let "sum+=num"
    let "num++"
done
echo "the sum is $sum"

select str in hello shiyanlou louplus
do
    echo $str
done
