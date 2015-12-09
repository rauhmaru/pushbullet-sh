#!/bin/bash
# Pushbullet - Zabbix integration 
# Raul Liborio, rauhmaru@gmail.com
# v 0.1

# Go to the URL https://www.pushbullet.com/#settings/account, copy your token and paste in TOKEN variable
TOKEN='YOUR TOKEN HERE'
BODY="$3"
TITLE="$2"
DATABINARY="{\"body\":\"${BODY}\",\"title\":\"${TITLE}\",\"type\":\"note\"}"

curl --header "Access-Token: ${TOKEN}" \
     --header 'Content-Type: application/json' \
     --data-binary "${DATABINARY}" \
     --request POST \
     https://api.pushbullet.com/v2/pushes
