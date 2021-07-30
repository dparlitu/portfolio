#!/bin/bash

# create ps3 menu options
PS3='Please choose Calculation: '
    options=("Addition" "Subtraction" "Multiplication" "Division" "Quit")
    select opt in "${options[@]}"
    do
        case $opt in
            # go thru each option case
            "Addition")
                echo
                # text colour start here
                echo -e "\033[34mEntering Addition mode ..."
                echo "Please enter TWO Numbers, press Return after each one: "
                    read a
                    read b
                        res=`echo $a + $b | bc`
                            # text colour stop here
                            echo -e "Result of: $a + $b = $res\e[0m"
                            echo
                ;;
            "Subtraction")
                echo
                echo -e "\033[32mEntering Subtraction mode ..."
                echo "Please enter TWO Numbers, press Return after each one: "
                    read a
                    read b
                        res=`echo $a - $b | bc`
                            echo -e "Result of: $a - $b = $res\e[0m"
                            echo
                ;;
            "Multiplication")
                echo
                echo -e "\033[31mEntering Multiplication mode ..."
                echo "Please enter TWO Numbers, press Return after each one: "
                    read a
                    read b
                        res=`echo $a \* $b | bc`
                            echo -e "Result of: $a * $b = $res\e[0m"
                            echo
                ;;
            "Division")
                echo
                echo -e "\033[35mEntering Division mode ..."
                echo "Please enter TWO Numbers, press Return after each one: "
                    read a
                    read b
                        # set scale 2 decimal points otherwise will show 0 on < 1
                        res=`echo "scale=2; $a / $b" | bc`
                            echo -e "Result of: $a / $b = $res\e[0m"
                            echo
                ;;
            "Quit")
                break
                ;;
            *) echo "invalid option $REPLY";;
        esac
    done

# REFERENCES
# https://www.thegeekstuff.com/2008/09/bash-shell-take-control-of-ps1-ps2-ps3-ps4-and-prompt_command/