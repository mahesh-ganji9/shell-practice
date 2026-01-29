#!/bin/bash

Userid=$(id -u)
LOG_FOLDER="/var/log/shell-script"
LOG_FIle="var/log/shell-script/$o.log"

if [ $Userid -ne 0 ];then
       
       echo "please run the script with root user access"
       exit 1
   fi

mkdir -p $LOG_FOLDER

VALIDATE() {
    if [ $? -ne 0 ]; then
   echo "$2...Failure" &>> $LOG_FIle
else
   echo "$2....Success" &>> $LOG_FIle
fi
}
    
dnf install nginx -y &>> $LOG_FIle
VALIDATE $? "Installing Nginx" 

dnf install htop -y &>> $LOG_FIle
VALIDATE $? "Installing htop" 

dnf install nodejs -y &>> $LOG_FIle
VALIDATE $? "Installing nodejs"
