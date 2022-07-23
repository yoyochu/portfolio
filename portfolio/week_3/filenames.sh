#! /bin/bash

#PASSED=$1
while read LINE
do
if [ -d "$LINE" ] ; then
    echo "$LINE - Thats a directory";
elif [ -f "$LINE" ]; then
    echo "$LINE - That file exists";
else
    echo "$LINE - I dont know what that is!";
fi
done <filenames.txt

exit 0