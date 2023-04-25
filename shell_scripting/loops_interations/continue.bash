#!/bin/bash

#The continue statement causes the current loop to exit rather than the entire loop, unlike break statement to causes the entire loop to exit. this can be seen in the case of try and except statement during exceptions.

num="1 2 3 4 5 6"

for Items in $num
do 
	a=$Items
	if [ `expr $a % 2` -eq 0 ]
	then
		echo "$a is an even number!!"
		continue
	fi
	echo $a iS an odd NUmber!! 
done 

 
