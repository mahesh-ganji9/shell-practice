FROM_ADDRESS=$1
TO_ADDRESS=$2
SUBJECT=$3
MESSAGE_BODY=$4
TEAM=$5


FINAL_MESSAGE=$(sed -e "s|TEAM|$TEAM|g" -e "s|Server_IP|$IP_ADDRESS|g" -e "s|MESSAGE|$MESSAGE_BODY|g" template.html)


{ echo "$FROM_ADDRESS";
  echo "$TO_ADDRESS"; 
  echo "Content-Type: text/html"
  echo "Subject: $SUBJECT";  
  echo "$FINAL_MESSAGE"
  echo ""; echo "<b>Test</b>"; } | msmtp $TO_ADDRESS
