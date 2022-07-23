#!/bin/bash

#colour variables - remember to add '\'
BLACK='\033[30m'
BLUE='\033[34m'
GREEN='\033[32m'
RED='\033[31m'
PURPLE='\033[35m'
NORMAL='\033[00m'

#Request user to enter 2 values.
echo "Please enter enter 2 numbers: " 
read a
read b 

#Request user to select type of mathematical operation

echo "Select choice of mathematical operation"
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"

read choice

case $choice in
1)res=`echo $a + $b | bc`
echo -e $BLUE "Result = $res"
;;
2)res=`echo $a - $b | bc`
echo -e $GREEN "Result = $res"  
;;
3)res=`echo $a \* $b | bc`
echo -e $RED "Result = $res"
;;
4)res=`echo "scale=2; $a / $b" | bc`
echo -e $PURPLE "Result = $res"
;;
esac

exit 0

