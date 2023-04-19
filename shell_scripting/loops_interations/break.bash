#!/bin/bash

#The code shows the use of break statement to leave the entire loop

a=0
while [ $a -lt 10 ]
do
	echo $a 
	if [ $a -eq 5 ]
	then 
		break
	fi
	a=`expr $a + 1`
done
