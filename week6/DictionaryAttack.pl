#!/usr/bin/perl

use Digest::SHA qw(sha256_hex);

#read the password hash 
$passwordHash = "bd02c0a916ef893fd3c726b50330d0099b095fa2216bb55b00d9cb027f881f77"; 
      
#open the wordlist 
open(WORDLIST, "<wordlist.txt") or die "Couldn't open wordlist, $!" ; 

#repeat for each word
while(<WORDLIST>) {
    chomp;
    $word = $_;
    
    #hash the word
    $wordlistHash = sha256_hex($word);
    print "$word: $wordlistHash\n";
    
    #if the hash is the same as the correct password's hash then we have cracked the password!
    if($wordlistHash eq $passwordHash) {
        print("Password has been cracked! It was $word\n");
        exit;
    }else{
        print("Password NOT cracked!");
    }
} 
     