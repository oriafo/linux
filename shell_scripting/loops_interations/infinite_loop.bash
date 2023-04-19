#!/bin/bash

#Demonstrate infinite loop

a=0

until [ $a -ge 10 ] 
do
	echo "still in the loop"
done 
