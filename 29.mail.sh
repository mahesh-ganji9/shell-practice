TO_ADDRESS=$1
SUBJECT=$2
MESSAGE_BODY=$3
SERVER_IP=$4
TO_TEAM=$5
SERVER_IP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)
FINAL_MESSAGE_BODY=$(echo $MESSAGE_BODY | sed -e 's/[]\/$*.^[]/\\&/g')

MESSAGE=$(sed -e "s/T0_TEAM/$TO_TEAM/g" -e "s/SERVER_IP/$SERVER_IP/g" -e "s/MESSAGE/$FINAL_MESSAGE_BODY/g")

{
echo "To: $TO_ADDRESS"
echo "Subject: $SUBJECT"
echo "Content-Type: text/html"
echo ""
echo "$MESSAGE"
} | msmtp "mahesh9.storage@gmail.com"