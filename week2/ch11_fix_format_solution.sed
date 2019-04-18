#!/bin/seq -f

s/http:\/\//https:\/\//g

s/^\[(.*)\]\((.+\.(png|jpg))\)/\!\[\1\]\(\2\)/g

s/\!\[(.*)\]\((.+\.tar\.gz)\)/\[\1\]\(\2\)/g

s/^([0-9]+\.)(\S.+)$/\1 \2/
