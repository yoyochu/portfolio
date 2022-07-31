#!/bin/bash
#this command is asking which folder would the user want to navigate to. 
#read -p "Type the name of the folder you would like to create: " FolderName
#this command makes the new folder
#mkdir $FolderName
#navigate to the new folder
#cd /home/yochu/scripts/portfolio/week_2/$FolderName
#this command is asking for the password from user
read -sp "Enter Password:" Password
#storing the password into secret.txt with hash
echo $Password | sha256sum > /home/yochu/scripts/portfolio/week_2/secret.txt
echo
echo "Password Changed"
exit 0