#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
Userid=$(id -u)
LOG_FOLDER="/var/log/app-logs"
LOG_DIR="/var/log/shell-script/"
LOG_File="/var/log/shell-script/backup.log"
Backup_DIR=/var/log/shell-script/Backup
SRC_DIR=$1
DEST_DIR=$2 
DefDays=$3
DAYS=${3:-14}

if [ $Userid -ne 0 ];then
       
       echo -e "$R please run the script with root user access" 
       exit 1
   fi

USAGE(){
    echo -e "$R Please provide as <SRC_DIR> <DEST_DIR> <DAYS> [Default 14 days] $N"
    exit 1
}

if [ $# -lt 2 ]; then
   USAGE
   exit 1
fi

if [ -z "$SRC_DIR" ]; then

    echo -e "$R please provide the SRC_DIR: $SRC_DIR"
    exit 1
   fi

if [ -z "$DEST_DIR" ]; then
     echo -e "$R please provide the DEST_DIR: $DEST_DIR"
     exit 1 
   fi

mapfile -t FILES < <(
    find "$SRC_DIR" -type f -name "*.log" -mtime +"${3:-14}"
)

if [ "${#FILES[@]}" -eq 0 ]; then
    echo "There are no Files to proceed with archive" 
    else
    timestamp=$(date +%d-%m-%y-%S)
    ARCHIVE_Name=$DEST_DIR/app-logs.$timestamp.tar.gz
    tar -czvf "$ARCHIVE_Name" "${FILES[@]}"
   if [ $? -eq 0 ]; then
     echo -e "$G Archive is Success $N"
       for $filepath in "${FILES[@]}"; do"
            echo deleting log file $filepath"
            rm -f $filepath
            echo "Deleted file: $fielpath"
        done
    else
        echo -e "$R Archive is Failure $N"
   fi
fi