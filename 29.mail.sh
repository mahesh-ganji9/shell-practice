FROM_ADDRESS=$1
TO_ADDRESS=$2
SUBJECT=$3
MESSAGE_BODY=$4
TEAM=$5

FINAL_MESSAGE_BODY=$(echo $MESSAGE_BODY | sed -e 's/[]\/$*.^[]/\\&/g')
FINAL_MESSAGE=$(sed -e "s/TEAM/$TEAM/g" -e "s/SERVER_IP/$IP_ADDRESS/g" -e "s/MESSAGE/$FINAL_MESSAGE_BODY/g" template.html)

{
echo "To: $TO_ADDRESS"
echo "Subject: $SUBJECT"
echo "Content-Type: text/html"
echo ""
echo "$FINAL_MESSAGE"
} | msmtp "$FROM_ADDRESS"

