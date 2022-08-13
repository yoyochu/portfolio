!#/bin/bash

#write headers to CSV file
#echo "CVE ID;Score;Title;Complexity"> Top10.txt

# ark command to get score top10
# ark command to get CVE ID
# ark command to get Title
awk -f '($1 ~ /<th><a/){sub(/.*\">/,X,$0);sub(/<.*/,X,$0);print $0}' scrape.txt


