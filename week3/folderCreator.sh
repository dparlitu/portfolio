#!/bin/bash

# prompt user for new folder name
read -p "Type the name of the folder you would like to create: " folderName

# if folder already exist then exit
if [ -d $folderName ]; then

    echo -e "\033[31mFolder \033[1m$folderName\033[0m \033[31malready exists!\e[0m"

    exit 1

else
    #if folder doesn't exist then make it
    mkdir "$folderName"
    echo
    echo -e "\033[32mFolder \033[1m$folderName\033[0m \033[32msuccesfully created.\e[0m"
    echo
    exit 0

fi