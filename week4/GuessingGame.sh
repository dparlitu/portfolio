#!/bin/bash

#This function prints an error 
printError() 
{
    echo -e "\033[31mERROR:\033[0m $1"
} 

#This function prints a warning
printWarning() 
{
    echo -e "\033[34mWARNING:\033[0m $1"
} 

#This function will check a value between 1 and 100 
getNumber() 
{ 
    read -p "$1: "
    while (( $REPLY < "1" || $REPLY > "100" )); 
        do
        printError "Input must be between 1 and 100"
        read -p "$1: "
        checkHigh
        checkLow
    done
}

#This function will check value lower than 42 
checkLow() 
{ 
    while (( $REPLY < "42" )); 
        do
        printWarning "Number too LOW. Try again..."
        getNumber
        checkHigh
    done
}

#This function will check value higher than 42 
checkHigh() 
{ 
    while (( $REPLY > "42" )); 
        do
        printWarning "Number too HIGH. Try again..."
        getNumber
        checkLow
    done
}

echo "Please enter a number between 1 and 100" 

getNumber
checkLow
checkHigh

echo -e "\033[32mCORRECT! The number is $REPLY \033[0m"

exit 0