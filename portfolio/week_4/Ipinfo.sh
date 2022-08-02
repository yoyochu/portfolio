#!/bin/bash 
#get info about networking from the ifconfig command 

net_info="$(ip address)" 


#parse out the ip address lines using sed 

addresses=$(echo "$net_info" | sed -n '/inet / { 

s/inet/IP Address:/ 
s/\//\n\t\tSubnet Mask:/ 
s/brd/\n\t\tBroadcast Address:/ 

p 

}') 

#format output 
echo -e "IP addresses on this computer are:\n$addresses" 

