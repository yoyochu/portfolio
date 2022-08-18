#! /bin/bash

#getting the real path of file
full_path=$(realpath $0)
#getting the directory path of file
dir_path=$(dirname $full_path)

#Get user to provide URL 
##potential improvement to add color to "exit" text
read -p "Please type the website URL to download or type 'exit' to return to main menu: " URL 

#testing url="https://www.cvedetails.com/top-50-products.php?year=2022" 

#declare
outfile="output.txt"

#if statment waiting for URL to download and return to main main once completed download or 'exit' selected

if [[ "$URL" != "exit" ]];
then
curl -o  $outfile $URL
cp $outfile raw.txt
grep -E '</td>|</a>'  $outfile | sed '/id="barchart/d' | sed 's/<[^>]*>//g' | grep -E $'\t\t\t\t\t\t\t' | sed '1,3d' | sed 's/^[\t]*//' | sed '/\&/d' | sed 's/[\t]*$//' > temp.txt
awk NF temp.txt | awk 'ORS=NR%5?",":"\n"' > $outfile
(. "$dir_path/Menu.sh")
else 
(. "$dir_path/Menu.sh")
fi


