#! /bin/bash
#Variables for colours
RED='\033[31m'
NORMAL='\033[00m'
GREEN='\033[32m'

#user to enter password
echo -e "${RED}Enter Password:${NORMAL} "
read -s Password
#decrypting the .lck file 
PASS=`cat /home/yochu/scripts/portfolio/week_2/secret.lck | openssl enc -base64 -d -aes-256-cbc -nosalt -pass pass:garbageKey
`
#comparing the password entered against the decrypted password.
if [ "$Password" == "$PASS" ]; then 
#If the user’s password is correct, print “Access Granted” and quit with the exit code 0.
echo "${GREEN} Access Granted ${NORMAL}"
exit 0 
else
#If the user’s password is incorre1ct print “Access Denied” and quit with the exit code 1.
echo -e "${GREEN} Access Denied ${NORMAL}"
exit 1
fi
