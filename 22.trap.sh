#!/bin/bash

set -e #ERR
trap 'echo "There is an error $LINENO, command: $BASH_COMMAND"' ERR

echo "This is Mahesh"
echo "This is Keeru"
echoo "print here"
echo "No error"