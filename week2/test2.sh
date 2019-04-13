#!/bin/bash
user1=syl001
echo $user1 ${user1}
echo $user1 ${user2:-syl002}
echo $user1 $use2
echo $user1 ${user2:=syl002}
echo $user1 $user2
