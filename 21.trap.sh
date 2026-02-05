# #!/bin/bash

# trap "echo Finished the script" EXIT
# i=1
# while [ $i -le 5 ]
#  do
#    i=$(($i+1))
#    echo $i
# done


/bin/bash

 trap "echo when press CTRL+C it will throw this" SIGINT
 i=1
 sleep 60
 do
   i=$(($i+1))
   
echo $i
 done