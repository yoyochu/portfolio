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
(. "$dir_1up/week_2/passwordCheck.sh")
#If password is 
if [ $? == "0" ]
then
echo -e "${BLUE}Select an option${NORMAL}"
echo -e "${CYAN}1. Create a folder${NORMAL}"
echo -e "${CYAN}2. Copy a folder${NORMAL}"
echo -e "${CYAN}3. Set a password${NORMAL}"
echo -e "${CYAN}4. Calculator${NORMAL}"
echo -e "${CYAN}5. Create Week Folders${NORMAL}"
echo -e "${CYAN}6. Check Filenames${NORMAL}"
echo -e "${CYAN}7. Download a File${NORMAL}"
echo -e "8. Exit"

read choice;
case $choice in
  1) (. "$dir_1up/week_2/setPassword.sh");;
  2) (. "$dir_1up/week_2/week_2/folderCopier.sh");;
  3) (. "$dir_1up/week_2/setPassword.sh");;
  4) (. "$dir_path/calculator.sh");;
  5) (. "$dir_path/megafoldermaker.sh");;
  6) (. "$dir_path/filenames.sh");;
  7) (. "$dir_path/InternetDownloader.sh");;
  8) exit 0;;
  *) echo "This option is not available. Please choose a different one.";; 
esac

else
echo "Goodbye"
fi
exit 0


