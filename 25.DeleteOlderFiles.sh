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

cd $LOG_DIR
Files=$(find . -name "*.log" -type f -mtime +14)
echo $Files

for File in $Files
do   
  if [ -z "$Files"]; then
  echo -e "$Y There are Files to delete older than 14 days"
  else
    rm $File
    echo "Deleted file $File"
  fi
done