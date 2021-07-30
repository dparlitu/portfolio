#!/bin/bash

# show existing folders
echo "Available folders: " $(ls -d */ | cut -f1 -d'/')

read -p "Type the name of one of the available folders listed above you would like to copy: " folderName

# if the name is an existing valid directory
if [ -d "$folderName" ]; then
    
    # capture new folder name
    read -p "Type the name of the destination folder: " newFolderName
    
    #copy folder
    cp -r "$folderName" "$newFolderName"
    echo
    echo -e "\033[32mFolder \033[1m$folderName\033[0m \033[32msuccesfully copied as \033[1m$newFolderName\033[0m \e[0m"
    echo
    exit 0

else

    # otherwise print an error
    echo -e "\033[31mI couldn't find that folder!\e[0m"
    exit 1
fi