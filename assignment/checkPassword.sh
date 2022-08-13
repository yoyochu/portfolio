#! /bin/bash
#Variables for colours
RED='\033[31m'
NORMAL='\033[00m'
GREEN='\033[32m'

#user to enter password
echo -e "${RED}Enter Password:${NORMAL} "
read -s Password1 
echo $Password1 | sha256sum > ./input.txt

PASS1=`cat ./secret.txt`
PASS2=`cat ./input.txt`

#comparing the password entered against the decrypted password.
if [[ "$PASS1" == "$PASS2" ]];  then
#If the user’s password is correct, print “Access Granted” and quit with the exit code 0.
echo -e "${GREEN} Access Granted ${NORMAL}"
exit 0 
else
#If the user’s password is incorre1ct print “Access Denied” and quit with the exit code 1.
echo -e "${GREEN} Access Denied ${NORMAL}"
exit 1
fi