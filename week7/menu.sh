#!/bin/bash

# this is the menu for the script that will...

# if exit status from the password check script returns 0 then display a menu with four options
if [ $? = 0 ]; then
    echo
    echo -e "\033[1m \033[34m  === Main Menu ===\e[0m"
    
    export PS3=$'\033[33mMenu - Please enter your choice:\e[0m '

    options=("Download Botnet C2 IP Blocklist" "View Botnet C2 IP Blocklist" "Download Malware URL List" "View Malware URL List" "View Graph" "Quit")
    select opt in "${options[@]}"
    do
        case $opt in
            "Download Botnet C2 IP Blocklist")
                ./downloadIPblock.sh
                ;;
            "View Botnet C2 IP Blocklist")
                ./viewIPblock.py
                ;;
            "Download Malware URL List")
                ./downloadMalURL.sh
                ;;
            "View Malware URL List")
                ./viewMalUrl.py
                ;;
            "View Graph")
                ./viewgraph.py
                ;;
            "Quit")
                echo
                echo "Goodbye!"
                echo
                break
                ;;
            *) echo "invalid option $REPLY";;
        esac
    done
fi

# REFERENCES
