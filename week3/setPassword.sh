#!/bin/bash

#  capture variable for folder name
read -p 'Please choose a folder name: ' folderName

# create folder
mkdir $folderName

# capture password
read -sp 'Please choose a password: ' password

#send password to text file under newly created folder
echo $password | sha256sum > ./$folderName/secret.txt