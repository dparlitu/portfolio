#!/bin/bash

# display date/ time to show the report was ...
now=$(date +"%T")

# remove quotations marks, lines starting with hashtag and the header
# save cleaned file to new text file
sed 's/"//g;/^#/d;/^f/d' ./downloads/malwareurl.csv > ./downloads/malwareurl.txt

# prepare data for graph by keeping the Date column only
awk '{ print $1 }' ./downloads/malwareurl.txt | awk -F',' '{ print $2 }' > ./downloads/graphtemp.txt

# sort and count the repetition of dates to get the number of daily discovered URLs
awk '{!seen[$0]++}END{for (i in seen) print i,","seen[i]}' ./downloads/graphtemp.txt | sort -n > ./downloads/graphdata.csv
rm ./downloads/graphtemp.txt

awk -F',' 'BEGIN {  
                    print"|======================|=========================|=========|=========|"
                    print"| FIRST SEEN           | DESTINATION IP:PORT     | STATUS  | MALWARE |"
                    print"|======================|=========================|=========|=========|" }
                { printf "| %20s | \033[33m%15s\033[0m | %-6s | %-7s | \033[31m%s\033[0m\n", $2, $3, $4, $5, $6 }' ./downloads/malwareurl.txt

echo "|====================================================================|"
echo "| Report Generated : $now"
echo "|====================================================================|"

echo

# call the main menu as the user won't see the options due to the lenght of the report
./menu.sh


# https://unix.stackexchange.com/questions/283407/can-sed-save-its-output-to-a-file
# https://stackoverflow.com/questions/7657647/combining-two-sed-commands