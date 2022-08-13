#!/bin/bash 

#getting the real path of file
full_path=$(realpath $0)

#getting the directory path of file
dir_path=$(dirname $full_path)

#getting the directory path of file - up 1 level
dir_1up=$(dirname $dir_path )

# running IpAddressesOnly.sh
(. "$dir_1up/week_4/Ipinfo.sh")