#!/bin/bash
while :
do
sleep 1440
curl -L "SELFPINGURL"
curl -L $SA_HEROKU_IN_RAW_URL >/.config/rclone/all.txt
randomnumber=$((1 + $RANDOM % 100))
randomaccount=`sed -n "$randomnumber p" /.config/rclone/all.txt`
echo $randomaccount>/.config/rclone/1.json
done
