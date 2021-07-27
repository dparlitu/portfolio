#!/bin/bash

# check if length of argument 1 string is zero
if [ -z "$1" ]; then

#Print an error and exit
    echo "Error, provide the name of the file containing the search list" && exit 1 
fi

#if line is empty, just move on
while read line; do
    if [ -z "$line" ]; then
        echo
    else
        #check if is -d directory then echo
        if [ -d "$line" ]; then
            echo "$line is a Directory"
        
        #check if is -f file then echo
        elif [ -f "$line" ]; then
            echo "$line is a File"
        else
            echo "$line - I don't know what that is!"
        fi
    fi
done <$1

exit 0


# https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash