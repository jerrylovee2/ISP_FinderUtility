#!/bin/bash
if [ "$1" == "" ]
then 
        echo"Usage: 0$ ip"
        exit
fi
res=$(curl http://ip-api.com/json/$1 -s)
#echo $res
status=$(echo $res | jq '.status' -r)
if [ "$status" == "success" ]
then 
        city=$(echo $res | jq '.city' -r)
        echo "City:  $city"
        country=$(echo $res | jq '.country' -r)
        echo "Country: $country"
        region=$(echo $res | jq '.region' -r)
        echo "Region: $region"
        countrycode=$(echo $res | jq '.countryCode' -r)
        echo "Country Code: $countrycode"
        regionname=$(echo $res | jq '.regionName' -r)
        echo "Region Name: $regionname"
        zip=$(echo $res | jq '.zip' -r)
        echo "Zip: $zip"
        isp=$(echo $res | jq '.isp' -r)
        echo "ISP: $isp"
        org=$(echo $res | jq '.org' -r)
        echo "ORG: $org"
        as=$(echo $res | jq '.as' -r)
        echo "AS: $as"
        query=$(echo $res | jq '.query' -r)
        echo "Query: $query"
        timezone=$(echo $res | jq '.timezone' -r)
        echo "Timezone: $timezone"
        longitude=$(echo $res | jq '.lon' -r)
        echo "Longitude: $longitude"
        latitude=$(echo $res | jq '.lat' -r)
        echo "Latitude: $latitude"
fi

