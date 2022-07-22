#! /bin/bash

#this command is asking for the password from user
read -sp "Enter Password:" Password
echo
#echo "Password entered: $Password"
#echo "Secret.txt contents: $(cat secret.txt)"
##Check the user’s password against the hash stored in secret.lck
#echo "Secret.txt contents: $(cat secret.lck)"
#decrypting the .lck file 
PASS=`cat secret.lck | openssl enc -base64 -d -aes-256-cbc -nosalt -pass pass:garbageKey
`
#comparing the password entered against the decrypted password.
if [ "$Password" == "$PASS" ]; then 
#If the user’s password is correct, print “Access Granted” and quit with the exit code 0.
echo "Access Granted"
exit 0 
else
#If the user’s password is incorre1ct print “Access Denied” and quit with the exit code 1.
echo "Access Denied"
exit 1
fi
