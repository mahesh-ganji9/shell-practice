#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

$LOG_DIR=/var/log/app-logs

if [-d $LOG_DIR]; then
    echo "$Y $LOG_DIR exists"
 else
    echo "$R $LOG_DIR does not exists"
    exit 1
fi

Files=$(find . -name "*.log" -mtime +14)
echo $FILES