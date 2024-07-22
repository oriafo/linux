#!/bin/bash

#This script helps to scan and monitor small home brand networks using the Ping command where sophisticated monitoring software can become an overhead. it checks for ip that are up in a particular subnet and displays them 

is_alive(){ 
	ping -c 1 $1 > /dev/null
	[ $? -eq 0 ] && echo The Ip address: $i is up
}

for i in 192.168.43.{1..255} 
do
	is_alive $i & disown
done
exit
