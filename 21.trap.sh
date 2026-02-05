#!/bin/bash

trap "echo Finished the srcipt" EXIT
i=1
while [ $i -le 5 ]
 do
   echo "sum=$( $i + 1 )"
done