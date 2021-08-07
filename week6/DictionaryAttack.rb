#!/usr/bin/ruby 
      
require 'digest' 
      
#read the password hash 
             
passwordHash = "bd02c0a916ef893fd3c726b50330d0099b095fa2216bb55b00d9cb027f881f77" 
             
#open the wordlist and repeat for each word 
             
IO.foreach("wordlist.txt") do | word | 
             
    word.chomp! 
             
    #hash the word 
             
    wordlistHash = Digest::SHA256.hexdigest(word) 
             
    puts("Trying password #{word}: #{wordlistHash}") 
             
    #if the hash is the same as the correct password's hash then we have cracked the password! 
             
    if(wordlistHash == passwordHash) 
             
        puts("Password has been cracked! It was #{word}") 
             
        return 
             
    end 
             
end   