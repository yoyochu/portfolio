#! /bin/bash

#Get user to provide URL and until the user types exit, it will keep looping

while read -p "Please type the website URL to download or type 'exit' to quit: " URL && [[ "$URL" != "exit" ]]
do
    # This line gets the the folder to download the file to 
    read -p "Please type the location of where you would like to download the file to: " Folder

    # This line uses WGET to download file from the internet & save to folder 
    wget -P $Folder $URL 

done 
