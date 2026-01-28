#!/bin/bash

START_TIME=$(date +%s)

echo "Script Executed at: $START_TIME"

sleep 10

END_TIME=$(date +%s)

echo "Script Ended at: $END_TIME"

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Time taken for execution of script is $TOTAL_TIME"