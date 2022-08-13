#!/bin/bash

echo "Enter Password:"
read -s Password
#storing the password into secret.txt with hash
echo -n $Password | sha256sum > /home/yochu/scripts/portfolio/week_2/secret.txt
echo
echo "Password Changed"
exit 0