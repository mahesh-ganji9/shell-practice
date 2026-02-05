#!/bin/bash

trap "echo Finished the srcipt" EXIT
i=1
while [ $i -le 5 ]
 do
   i=$($i+1)
   echo $i
done