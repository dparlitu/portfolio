#!/bin/bash

# start loop until input value is 'exit'
until [ "$url" = "exit" ]
    do
        read -p "Please type the URL of a file to download or type 'exit' to quit: " url

            #if the prompt input string is not 'exit' then run the code
            if [ $url != "exit" ]; then
                read -p "Type the location of where you would like to download the file. Current working location `pwd`: " location
                
                # check that download location available
                if [ -d $location ]; then
                    wget -P $location $url
                else
                    echo "Download location unavailable"
                fi
            fi 
done

exit 0

# REFERENCES
# https://linuxhint.com/bash_until_loops/
# https://phoenixnap.com/kb/wget-command-with-examples