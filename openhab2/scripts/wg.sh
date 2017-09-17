#!/bin/bash

temp=`curl -X GET --header "Accept: text/plain" "http://192.168.178.53:8080/rest/items/Gardentemp/state"`
humy=`curl -X GET --header "Accept: text/plain" "http://192.168.178.53:8080/rest/items/Gardenhumidy/state"`
dew=`curl -X GET --header "Accept: text/plain" "http://192.168.178.53:8080/rest/items/Gardendew/state"`
date=`date +"%Y-%m-%d"`
hour=`date +"%H"`
minu=`date +"%M"`
sec=`date +"%S"`
temp1=`echo $temp*1.8+32|bc`
temp2=`echo $temp1 | gawk '{printf "%.0f\n", $1}'`
humy1=`echo $humy | gawk '{printf "%.0f\n", $1}'`
dew1=`echo $dew*1.8+32|bc`
dew2=`echo $dew1 | gawk '{printf "%.0f\n", $1}'`


url=`echo "https://weatherstation.wunderground.com/weatherstation/updateweatherstation.php?ID=IIDAROBE33&PASSWORD=ibrj62k7&dateutc=now&dewptf=$dew2&tempf=$temp2&humidity=$humy1&softwaretype=openhab&action=updateraw"`
curl -XPOST "$url"
touch wg.log
echo "${temp##*/} $temp1 $temp2 ${humy##*/} $dew1 $dew2 $humy1 $date $hour":"$minu":"$sec" >wg.log
echo "$dew1 $dew $dew"

