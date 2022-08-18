#! /bin/bash

BLACK='\033[30m'
BLUE='\033[34m'
GREEN='\033[32m'
CYAN='\033[36m'
RED='\033[31m'
PURPLE='\033[35m'
BROWN='\033[33m'
GRAY='\033[01;30m'
NORMAL='\033[00m'

#getting the real path of file
full_path=$(realpath $0)

#getting the directory path of file
dir_path=$(dirname $full_path)

#getting the directory path of file - up 1 level
dir_1up=$(dirname $dir_path )


# running passwordCheck.sh to request user for password and checking password 
(. "$dir_path/checkPassword.sh")
#If password is accurate
if [ $? != "0" ]
then
echo "See you"
exit 

else

#selection menu - loops till the user devides to leave remain at main menu
while [[ $choice != 5 || $choice != 4 || $choice != 3 || $choice != 2 || $choice != 1 ]];
do
echo -e "${PURPLE}Welcome to Yolanda's URL downloader${NORMAL}"
echo -e "${BLUE}Please select an option${NORMAL}"
echo -e "${CYAN}1. Download URL${NORMAL}"
echo -e "${CYAN}2. View raw data${NORMAL}"
echo -e "${CYAN}3. View Data in table format${NORMAL}"
echo -e "${CYAN}4. Reset Password${NORMAL}"
echo -e "5. Exit"

read choice;
case $choice in
  1) (. "$dir_path/Scrape.sh");;
  2) (cat raw.txt);;
  3) (. "$dir_path/awk.sh");;
  4) (. "$dir_path/resetPassword.sh");break;;
  5) echo "Thanks for using my script, bye" ; exit 0;;
  *) echo "This option is not available. Please choose a different one." ;; 
esac
done


fi



