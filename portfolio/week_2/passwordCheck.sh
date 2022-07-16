#! /bin/bash

#this command is asking for the password from user
read -sp "Enter Password:" Password
echo
#echo "Password entered: $Password"
#echo "Secret.txt contents: $(cat secret.txt)"
#Check the user’s password against the hash stored in secret.txt
if [ "$Password" == "$(cat secret.txt)" ]; then 
#If the user’s password is correct, print “Access Granted” and quit with the exit code 0.
echo "Access Granted"
exit 0 
else
#If the user’s password is incorrect print “Access Denied” and quit with the exit code 1.
echo "Access Denied"
exit 1
fi
