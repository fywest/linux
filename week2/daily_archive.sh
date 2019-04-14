#!/bin/bash

#d=`date +%y%m%d%H%M%S`
d=$(date +%Y%m%d)
name_tar="archive-$d.tar"
name_targz="archive-$d.tar.gz"
#echo $d
#echo $name_filebackup

#tar -czvf zipfile.tar.gz file1 file2
#tar -xzvf zipfile.tar.gz   /tmp/
#tar -rzvf zipfile.tar.gz 
#tar -tvf zipfile.tar.gz
#[[ -e hello.txt ]]

rm archive-*

cat files-to-backup.txt | while read filename

do
#echo $filename
#echo $name_tar
#if [ ! -f  hello.txt ]; then
#if [ ! -f  $filename ]; then

if [ -f  $filename ]; then

if [ ! -f  $name_tar ]; then
 echo "do not exist, add $name_tar and $filename"
 tar -cvf $name_tar $filename
else
 echo "add $filename"
 tar -uvf $name_tar $filename
fi

else
 echo "$filename does not existed"
fi

done

gzip $name_tar
tar -tvf $name_targz
#name="zipfile4.tar.gz"
#name="archive-$d.tar.gz"
#echo $name
#filename1="hello.txt"
#echo $filename1
#tar -czvf $name $filename1

