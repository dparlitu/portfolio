#!/bin/bash

# start loop until input value is 'exit'

# wget output file
file=./downloads/ipblocklist.csv

url=https://feodotracker.abuse.ch/downloads/ipblocklist.csv

wget -q $url -O $file

echo "Downloading file..."

wgetval=$?

if [ $wgetval -eq 0 ]; then
    echo "File ipblocklist.csv successfully downloaded to ./downloads folder."
    echo
    
else
    echo "Download Failure!"
    exit 1
fi

./menu.sh
