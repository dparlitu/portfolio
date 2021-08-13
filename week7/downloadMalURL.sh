#!/bin/bash

# start loop until input value is 'exit'

# wget output file
file=./downloads/malwareurl.csv

url=https://urlhaus.abuse.ch/downloads/csv_recent/

echo "Downloading file..."

wget -q $url -O $file

wgetval=$?

if [ $wgetval -eq 0 ]; then
    echo "File malwareurl.csv successfully downloaded to ./downloads folder."
    echo
    
else
    echo "Download Failure!"
    exit 1
fi

#./menu.sh
