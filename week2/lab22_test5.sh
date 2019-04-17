#!/bin/bash

func(){
    echo "start function"
    return 123
    echo "function end"
}


func

echo "return: $?"
