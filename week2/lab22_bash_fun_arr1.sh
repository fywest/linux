#!/bin/bash

func1(){
    var1=shiyanlou001
    local var2=shiyanlou002
    var3=$1
}


func1 hello

echo $var1 $var2 $var3
