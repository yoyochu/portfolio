#! /bin/bash

#getting the real path of file
full_path=$(realpath $0)
#getting the directory path of file
dir_path=$(dirname $full_path)

#Get user to provide URL and until the user types exit, it will keep looping
##potential improvement to add color to "exit" text
while read -p "Please type the website URL to download or type 'exit' to quit: " URL && [[ "$URL" != "exit" ]]
do
    # This line uses WGET to download file from the internet & save to the same directory  
    wget -P $dir_path $URL -O scrape.txt

done 
