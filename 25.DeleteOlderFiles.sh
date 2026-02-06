#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_DIR=/var/log/app-logs

if [ -d $LOG_DIR ] ; then
    echo -e "$Y $LOG_DIR exists"
 else
    echo -e "$R $LOG_DIR does not exists"
    exit 1
fi

Files_to_Delete=$(find $LOG_DIR -name "*.log" -mtime +14)
#echo $Files_to_Delete

# if [ -z "$Files" ]; then
#   echo -e "$Y There are no Files to delete older than 14 days"
#   exit
#   else
#     for File in $Files
#     do
#     rm $File
#     echo "Deleted file $File"
#     done
# fi

while IFS= read -r line; do
   echo $line 
done <<< $Files_to_Delete 