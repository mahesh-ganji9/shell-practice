#!/bin/bash

Userid=$(id -u)

if [ $Userid -ne 0 ];then
       
       echo "please run the script with root user access"
       exit 1
   fi
    
echo "Installing Nginx"
dnf install nginx -y



if [ $? -ne 0 ]; then
   echo "Installing nginx...Failure"
   exit 1
else
   echo "Installing nginx....Success"
fi

echo "Installing htop"
dnf install htop -y

if [ $? -ne 0 ]; then
   echo "Installing htop...Failure"
   exit 1
else
   echo "Installing htop....Success"
fi

echo "Installing nodejs"
dnf install nodejs -y

if [ $? -ne 0 ]; then
   echo "Installing nodejs...Failure"
   exit 1
else
   echo "Installing nodejs....Success"
fi