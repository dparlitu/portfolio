#!/bin/bash

# the make folder function is not relevant for this scenario
# script has been modified to reflect the Megamenu requirements

# capture and save password hash
read -sp 'Please choose a New password: ' password
echo
read -sp 'Please re-type your password: ' password2

if [ $password == $password2 ]; then

    # save password to file
    echo $password > password.txt

    # create hash for password file
    sha256sum password.txt > secret
    # clear stored password for security purposes
    echo "" > password.txt

    echo
    echo -e "\033[32mPassword succesfully changed!\e[0m"
    echo

    exit 0

else

    echo
    echo -e "\033[31mPassword doesn't match! Password NOT changed!\e[0m"
    echo

    exit 1

fi
