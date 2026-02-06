#!/bin/bash
# i=1
# while [ $i -le 5 ]
# do 
#    echo $i
#    ((i++))
# done

while IFS= read -r line;
do 
 echo "$line"
done < ./24.script2.sh