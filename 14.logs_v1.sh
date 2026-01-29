#!/bin/bash

Userid=$(id -u)
LOG_FOLDER="/var/log/shell-script"
LOG_File="/var/log/shell-script/$0.log"

if [ $Userid -ne 0 ];then
       
       echo "please run the script with root user access" | tee -a $LOG_File
       exit 1
   fi

mkdir -p $LOG_FOLDER

VALIDATE() {
    if [ $? -ne 0 ]; then
   echo "$2...Failure" | tee -a $LOG_File
else
   echo "$2....Success" | tee -a $LOG_File
   fi
}
    
dnf install nginx -y | tee -a $LOG_File
VALIDATE $? "Installing Nginx" 

dnf install htop -y | tee -a $LOG_File
VALIDATE $? "Installing htop" 

dnf install nodejs -y | tee -a $LOG_File
VALIDATE $? "Installing nodejs"
