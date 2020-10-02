#!/bin/bash
#clear
input=$1
while IFS= read -r line;do
  echo -e "[+] Enumeration ---------> $line"
  echo  ""
  gron "https://otx.alienvault.com/otxapi/indicator/hostname/url_list/$line?limit=100&page=1" | grep "\burl\b" | gron --ungron | jq
  echo -e ""
  echo -e ""
done < "$input" >> $2
