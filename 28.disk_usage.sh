#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
Userid=$(id -u)


Threshold=3

echo $USAGE

While IFS= read -r line
do
   USAGE=$(df -hT | grep -v Filesystem | awk '{print $6}'| cut -d "%" -f1)
   PARTITON=$(df -hT | grep -v Filesystem | awk '{print $7}')
   if [ $USAGE -gt $Threshold ]; then
       
       Message+="High Disk usage on $PARTITION:$USAGE"

done

  echo "$Message"