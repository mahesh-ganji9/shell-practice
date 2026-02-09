#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
Userid=$(id -u)
# Message=""
IP_ADDRESS=$(curl -sS http://169.254.169.254/latest/meta-data/local-ipv4)

DISK_USAGE=$(df -hT | grep -v Filesystem)

Threshold=3

while IFS= read -r line
do
   USAGE=$(echo $line | awk '{print $6}'| cut -d "%" -f1)
   PARTITION=$(echo $line | awk '{print $7}')
   if [ $USAGE -gt $Threshold ]; then
       
       MESSAGE+="High Disk usage on $PARTITION:$USAGE% <br>"
    fi 
done <<< $DISK_USAGE  

echo -e "$MESSAGE"

sh 29.mail.sh "mahesh9.storage@gmail.com" "mahesh9.storage@gmail.com" "Disk uitlization on $IP_ADDRESS is High" "$MESSAGE" "DEVOPS_Team"