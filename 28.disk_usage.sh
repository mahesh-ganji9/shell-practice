#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
Userid=$(id -u)

Threshold=60

USAGE=$(df -hT | awk '{print $6}' | cut -d "%" -f1)

echo $USAGE