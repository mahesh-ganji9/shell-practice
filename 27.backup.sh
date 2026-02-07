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

if [ $Userid -ne 0 ];then
       
       echo -e "$R please run the script with root user access" 
       exit 1
   fi

USAGE() {
    echo -e "$R Please provide as <SRC_DIR> <DEST_DIR> <DAYS> [Default 14 days] $N"
}

if [ $# -lt 2 ]; then
   USAGE
fi

if [ -z "$SRC_DIR" ]; then

    echo -e "$R please provide the SRC_DIR: $SRC_DIR"
    exit 1
   fi

if [ -z "$DEST_DIR" ]; then
     echo -e "$R please provide the DEST_DIR: $DEST_DIR"
     exit 1 
   fi



