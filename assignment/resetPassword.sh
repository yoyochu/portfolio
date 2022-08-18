#!/bin/bash

#getting the real path of file
full_path=$(realpath $0)
#getting the directory path of file
dir_path=$(dirname $full_path)

#this command is asking for the password from user
read -sp "Enter Password:" Password
#storing the password into secret.txt with hash
echo $Password | sha256sum > ./secret.txt
echo "Password Changed"

#return to main menu
(. "$dir_path/Menu.sh")
