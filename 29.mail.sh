FROM_ADDRESS=$1
TO_ADDRESS=$2
SUBJECT=$3
MESSAGE_BODY=$4


{ echo "$FROM_ADDRESS";
  echo "$TO_ADDRESS"; 
  echo "Subject: $SUBJECT"; 
  echo "Content-Type: text/html; charset=UTF-8"; 
  echo "<pre>$MESSAGE_BODY</pre>"
  echo ""; echo "<b>Test</b>"; } | msmtp $TO_ADDRESS
