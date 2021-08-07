#!/usr/bin/python3

# This script will try and guess a password using all possible combinations of lower case letters and numbers
# this could be modified to include Upper case letters and symbols if needed
# the lenght can be modified by changing the "lenght" argument

import hashlib
import random
import string
import itertools
import time

# password to be guessed is "12345"
passwordHash = "5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5" 

# read the length of the password
# length = int(input('\nEnter the length of password: '))

# predefined lenght of the password
length = 5

upper = string.ascii_uppercase
symbols = string.punctuation
lower = string.ascii_lowercase
num = string.digits

# what type of characters should be used
# this can be improved with a CASE statement
# all = lower + upper + num + symbols
all = num

# start counter
tic = time.perf_counter()

for i in itertools.count():
    print (f"{i}")
    
    temp = random.sample(all,length)
    word = "".join(temp)

    #hash the word 
    wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest() 
    print(f"Trying password {word}:{wordlistHash}")

    #if the hash is the same as the correct password's hash then we have cracked the password! 
      
    if(wordlistHash == passwordHash): 
        toc = time.perf_counter()
        print(f"Password has been cracked in {toc - tic:0.4f} seconds after {i} tries! It was {word}") 
      
        break



# REFERENCES
# https://medium.com/analytics-vidhya/create-a-random-password-generator-using-python-2fea485e9da9
# https://stackoverflow.com/questions/34253996/infinite-for-loops-possible-in-python 
# https://realpython.com/python-timer/