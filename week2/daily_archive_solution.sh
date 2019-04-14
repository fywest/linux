#!/bin/bash

CONFIG=files-to-backup.txt
ARCHIVE=archive-$(date +%Y%m%d).tar.gz

#cd ~
if ! [ -f $CONFIG ]
then
    echo "$CONFIG does not exist."
    exit 1
fi

while read -r file
do
    if [ -f $file -o -d $file ]
    then
        files="$files $file"
    else
        echo "$file does not exist,it will be skipped."
    fi
done < "$CONFIG"

echo "Starting archive..."
tar -czf $ARCHIVE $files
echo "Archive completed"
