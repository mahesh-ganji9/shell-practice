#!/bin/bash

trap 'echo "Interrupted! by pressing CTRL+C"' $SIGINT

sleep 60

echo "Done"