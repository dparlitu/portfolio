#!/bin/bash 

# This script will collect, pass on the arguments and call the megafoldermaker script
# megafoldermaker.sh script can't be called out from the MegaMenu as the user won't know that the arguments have to be entered
# I did it this way to leave the original megafoldernaker.sh script untouched

echo -e "\e[33mPlease enter THREE numbers in Ascending order for week folders, press Return after each one:\e[0m "

read one
read two
read three

./megafoldermaker.sh "$one" "$two" "$three"

exit 0