#!/bin/bash

trap 'echo "Interrupted! by pressing CTRL+C"; exit' SIGINT

sleep 60

echo "Done"