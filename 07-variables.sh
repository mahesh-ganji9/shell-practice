#!/bin/bash

echo "All arguments passwd to a script: $@"
echo "Number of variables passwd to script: $#"
echo "Script Name : $0"
echo "Present which directory you are in: $PWD"
echo "Who is running the Script: $USER"
echo "Home Directory of the user: $HOME"
echo "PID of the Script: $$"
sleep 100 &
echo "Background process ID: $!"