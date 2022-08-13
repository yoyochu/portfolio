#!/usr/bin/ruby
require 'digest'
#read the password hash
passwordHash = "e7c8eee7eed1d0eb4f59e21710da44b81dd96bf4f1542547544560d62bab6179"
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
