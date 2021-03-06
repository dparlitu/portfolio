#!/bin/bash

# check if the hash file already exists
# if hash file exists then save password to a text file to be checked against the hash 
# otherwise create the hash for the script to use
if [ -f secret ]; then

    # ask user for his existing password; that will be checked against existing hash
    read -sp "$(echo -e "\033[34mPlease enter the Password:\e[0m ")" pwd

    # save password to file
    echo $pwd > password.txt
else

    # ask user for a new password password
    read -sp "$(echo -e "\e[33mPlease choose a NEW Password:\e[0m ")" pwd

    # save password to file
    echo $pwd > password.txt

    # create hash for password file
    sha256sum password.txt > secret
fi

# clean up a bit the feedback window with an empty line
echo

# if the result from checking the hash is a failure, show deny message and exit with 1 otherwise show message with access granted and exit with 0
if [ "$(sha256sum -c secret)" == "password.txt: FAILED" ]; then
    echo -e "\033[31mAccess Denied!\e[0m"
    echo
    # clear stored password for security purposes
    echo "" > password.txt
    exit 1
else
    echo
    echo -e "\033[32mAccess Granted!\e[0m"
    echo

    # clear stored password for security purposes
    echo "" > password.txt
    exit 0
fi


# References
# https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html
#   used for if file exists operators

# https://gist.github.com/onnimonni/b49779ebc96216771a6be3de46449fa1
#   used the script to learn how to check if a file already exists for my IF statement

# https://phoenixnap.com/kb/md5sum-linux