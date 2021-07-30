#!/bin/bash 

#If there aren't three arguments to the script 
      
if (( $#!=3 )); then

    #Print an error and exit

    echo "Error, provide three numbers" && exit 1 
      
fi 
      
#For every number between the first argument and the last 

echo

for ((i = $1; i <= $3; i++)) 
      
    do

        #Create a new folder for that number 
        echo "Creating directory week$i"
        mkdir "week$i"
        echo -e "\033[32mweek$i created succesfully\e[0m"

done

echo

exit 0