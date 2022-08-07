#!/bin/bash

#The answer 
readonly Answer=42

#loop for game
loop=1

#This function prints a given error 
printError() 

{ 

echo -e "\033[31mERROR:\033[0m $1" 

} 

#This function will get a value between the 2nd and 3rd arguments and check if value = 42 
getNumber() 

{ 
read -p "$1: "
while (( $loop == 1 )); do 
    if [ $REPLY -lt $Answer ] && [ $REPLY -ge 1 ]; then
    echo "Too Low!";
    elif [ $REPLY -gt $Answer ] && [ $REPLY -le 100 ]; then 
    echo "Too High!";
    elif [ $REPLY -eq $Answer ]; then
    echo "Right!" && exit 0; #change "Correct" to "Right" in week 5
    else 
    printError "Input must be between $2 and $3";
    fi
read -p "$1: "
done 
} 

echo "This is the start of the script" 
getNumber "Please type a number between 1 and 100" 1 100 

