#!/bin/bash

url_list=(
http://ww.baidu.com
http://www.shiyanlou.com
http://www.google.com
)

wait(){
    echo -n 'wait 3 second...'
    for((i=0;i<3;i++))
    do
        echo -n ".";sleep 1
    done
    echo
}

check_url(){
    wait

#for((i=0;i<`echo ${#url_list[*]}`;i++))
    for((i=0;i<${#url_list[*]};i++))
    do
        wget -o /dev/null -T 3 --tries=1 --spider ${url_list[$i]} >/dev/null 2>&1

        if [ $? -eq 0 ];then
            echo "${url_list[$i]} success"
        else
            echo "${url_list[$i]} false"
        fi
    
    done

}

main(){
        check_url
}

main
