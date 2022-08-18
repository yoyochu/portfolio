#!/bin/bash 
#awk code to format the file output.txt into table format 
echo
echo -e "Top 50 Vulnerabilites for 2022"
awk -F: 'BEGIN {
    
    FS=",";
    print "________________________________________________________________________________________________________________";
    print "| \033[34m#   \033[0m | \033[34mProduct Name \t\t\t\033[0m | \033[34mVendor Name \t\t\033[0m | \033[34mProduct Type\t\t\033[0m | \033[34m# of Vulnerabilites\033[0m |";

}
{  
   printf("| \033[33m%-4s\033[0m | \033[35m%-31s\033[0m | \033[35m%-21s\033[0m | \033[35m%-21s\033[0m | \033[35m%-19s\033[0m |\n", $1,$2,$3,$4,$5);
}
END {

    print("________________________________________________________________________________________________________________");

}' output.txt

#return to main menu
(. "$dir_path/Menu.sh")