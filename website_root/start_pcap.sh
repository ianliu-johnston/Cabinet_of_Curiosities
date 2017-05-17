#!/bin/bash
FILE=log.$(date +%F).pcap
IPS=("123.456.789") #An array of ip addresses to ignore
IGNORE_IPS=
for i in ${IPS[@]}; do
	IGNORE_IPS=$IGNORE_IPS"not host "$i" "
done
sudo touch "$FILE"
sudo tshark -w "$FILE" "$IGNORE_IPS" >> /dev/null 2>&1 &
