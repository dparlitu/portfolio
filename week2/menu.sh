#!/bin/bash

./passwordCheck.sh

if [ $? = 0 ]; then
    PS3='Please enter your choice: '
    options=("Create a folder" "Copy a folder" "Set a password" "Quit")
    select opt in "${options[@]}"
    do
        case $opt in
            "Option 1")
                ./foldercreator.sh
                ;;
            "Option 2")
                ./foldercopier.sh
                ;;
            "Option 3")
                ./setpassword.sh
                ;;
            "Quit")
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