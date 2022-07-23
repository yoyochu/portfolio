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

# running passwordCheck.sh to request user for password and checking password 
(. /home/yochu/scripts/portfolio/week_2/passwordCheck.sh)
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
  1) (. /home/yochu/scripts/portfolio/week_2/setPassword.sh);;
  2) (. /home/yochu/scripts/portfolio/week_2/folderCopier.sh);;
  3) (. /home/yochu/scripts/portfolio/week_2/setPassword.sh);;
  4) (. ./calculator.sh);;
  5) (. ./megafoldermaker.sh);;
  6) (. ./filenames.sh);;
  7) (. ./InternetDownloader.sh);;
  8) exit 0;;
  *) echo "This option is not available. Please choose a different one.";; 
esac

else
echo "Goodbye"
fi
exit 0


