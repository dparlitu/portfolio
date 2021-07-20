#!/bin/bash

# show existing folders
echo "Available folders: " $(ls -d */ | cut -f1 -d'/')

read -p "Type the name of one the available folders above you would like to copy: " folderName

# if the name is an existing valid directory
if [ -d "$folderName" ]; then
    
    # capture new folder name
    read -p "Type the name of the destination folder: " newFolderName
    
    #copy folder
    cp -r "$folderName" "$newFolderName"

else

# otherwise print an error
echo "I couldn't find that folder"
fi