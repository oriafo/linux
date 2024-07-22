#!/bin/bash

#Demonstrate infinite loop that cant stop executing until it is forced to stop using ctrl c 

a=0

until [ $a -ge 10 ] 
do
	echo "still in the loop"
done 
