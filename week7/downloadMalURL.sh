#!/bin/bash

# start loop until input value is 'exit'

# wget output file
file=./downloads/malwareurl.csv

url=https://urlhaus.abuse.ch/downloads/csv_recent/

wget $url -O $file

exit 0

