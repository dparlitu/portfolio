#!/bin/bash

# open passwordCheck script to check for password
./passwordCheck.sh

# if exit status from the password check script returns 0 then display a menu with four options
if [ $? = 0 ]; then
    echo -e "\033[1mMegaMenu\e[0m"
    
    export PS3=$'\033[33mMegaMenu - Please enter your choice:\e[0m '

    options=("Create a Folder" "Copy a Folder" "Set a Password" "Calculator" "Create Week Folders" "Check Filenames" "Download a File" "Quit")
    select opt in "${options[@]}"
    do
        case $opt in
            "Create a Folder")
                ./folderCreator.sh
                ;;
            "Copy a Folder")
                ./folderCopier.sh
                ;;
            "Set a Password")
                ./setPassword.sh
                ;;
            "Calculator")
                ./calculator.sh
                ;;
            "Create Week Folders")
                ./megafoldermaker.sh
                ;;
            "Check Filenames")
                ./filenames.sh
                ;;
            "Download a File")
                ./InternetDownloader.sh
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
#https://stackoverflow.com/questions/8352851/how-to-call-one-shell-script-from-another-shell-script/8352939
#https://askubuntu.com/questions/1705/how-can-i-create-a-select-menu-in-a-shell-script
#https://shapeshed.com/unix-exit-codes/
#https://www.thegeekstuff.com/2008/09/bash-shell-take-control-of-ps1-ps2-ps3-ps4-and-prompt_command/