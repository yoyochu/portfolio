#!/bin/bash

#curl=$(which curl)
outfile="output.txt"
#word=$(echo $1)
url="https://www.cvedetails.com/top-50-products.php?year=2022"
echo $url

curl -o "output.txt" $url

grep -E '</td>|</a>' output.txt | sed '/id="barchart/d' | sed 's/<[^>]*>//g' | grep -E $'\t\t\t\t\t\t\t' | sed '1,3d' | sed 's/^[\t]*//' | sed '/\&/d' | sed 's/[\t]*$/ /' > temp.txt
awk '/./' temp.txt | awk 'ORS=NR%5?",":"\n"' > $outfile