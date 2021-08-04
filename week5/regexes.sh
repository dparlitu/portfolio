#!/bin/bash

# all sed statements
output=$(grep sed greptext.txt)
echo $output

# all lines that start with the letter m
output=$(grep ^m greptext.txt)
echo $output

# all lines that contain three digit numbers
output=$(grep -E '[0-9]{3}' greptext.txt)
echo $output

# all echo statements with at least three words
output=$(grep 'echo [a-z]* [a-z]* [a-z]*' greptext.txt)
echo $output

# all lines that would make a good password
# - between 8 and 255 char / no space / one digit / Upper case / Lower case
output=$(grep -P '(?=^.{8,255}$)(?=^[^\s]*$)(?=.*\d)(?=.*[A-Z])(?=.*[a-z])' greptext.txt)
echo $output
