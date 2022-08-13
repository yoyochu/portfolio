#!/bin/bash 
#awk code to format the file /etc/password into table format and also filter out the users who have a /bin/bash as their default shell
awk -F: 'BEGIN {
    
    FS=":";
    print "_____________________________________________________________________________________________________";
    print "| \033[34mUsername\t\t\t\033[0m | \033[34mUserID \033[0m | \033[34mGroupID \033[0m | \033[34mHome\t\t    \033[0m | \033[34mShell\t\t   \033[0m |";

}
{
    if ($7 == "/bin/bash") printf("| \033[33m%-30s\033[0m | \033[35m%-7s\033[0m | \033[35m%-8s\033[0m | \033[35m%-20s\033[0m | \033[35m%-20s\033[0m |\n", $1, $3, $4, $6, $7);

}
END {

    print("____________________________________________________________________________________________________");

}' /etc/passwd
