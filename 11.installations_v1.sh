#!/bin/bash

Userid=$(id -u)

if [ $Userid -ne 0 ];then
       
       echo "please run the script with root user access"
       exit 1
   fi
    
echo "Installing Nginx"
dnf install nginxx -y

if [ $? -ne 0 ]; then
   echo "Installing nginx...Failure"
   exit 1
else
   echo "Installing nginx....Success"
fi