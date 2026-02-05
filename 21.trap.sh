# #!/bin/bash

# trap "echo Finished the script" EXIT
# i=1
# while [ $i -le 5 ]
#  do
#    i=$(($i+1))
#    echo $i
# done


#!/bin/bash

 trap "echo when press CTRL+C it will throw this..exiting; exit 1" SIGINT
 i=1
 sleep 240
 while [ $i -le 5 ]
 do
   
   i=$(($i+1))
   
echo $i
 done