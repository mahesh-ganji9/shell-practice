#!/bin/bash

Userid=$(id -u)

if [ $Userid -ne 0 ];then
       
       echo "please run the script with root user access"
       exit 1
   fi

VALIDATE() {
    if [ $? -ne 0 ]; then
   echo "$2...Failure"
else
   echo "$2....Success"
fi
}
    
dnf install nginx -y
VALIDATE $? "Installing Nginx" 

dnf install htop -y
VALIDATE $? "Installing htop" 

dnf install nodejs -y
VALIDATE $? "Installing nodejs"
