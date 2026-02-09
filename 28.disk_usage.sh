#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
Userid=$(id -u)
# Message=""
SERVER_IP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)

DISK_USAGE=$(df -hT | grep -v Filesystem)

Threshold=3

while IFS= read -r line
do
   USAGE=$(echo $line | awk '{print $6}'| cut -d "%" -f1)
   PARTITION=$(echo $line | awk '{print $7}')
   if [ $USAGE -gt $Threshold ]; then
       
       Message+="High Disk usage on $PARTITION:$USAGE% \n"
    fi 
done <<< $DISK_USAGE  

echo -e "$Message"

sh 29.mail.sh "mahesh050917@gmail.com" "$SERVER_IP" "Disk Space Utilization"