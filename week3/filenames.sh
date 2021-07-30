#!/bin/bash

echo -e "\e[33mPlease type in the filename containing the search list:\e[0m "

read file

# check if file exists
if [ ! -f "$file" ]; then

#Print an error and exit
    echo "Error, file not found!" && exit 1 
fi

#if line is empty, just move on
while read line; do
    if [ -z "$line" ]; then
        echo
    else
        #check if is -d directory then echo
        if [ -d "$line" ]; then
            echo "$line - That's a Directory"
        
        #check if is -f file then echo
        elif [ -f "$line" ]; then
            echo "$line - That file exists"
        else
            echo "$line - I don't know what that is!"
        fi
    fi
done <$file

exit 0


# https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash