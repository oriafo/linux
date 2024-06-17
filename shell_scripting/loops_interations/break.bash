#!/bin/bash

#The code shows the use of break statement to LEAVE the entire loop unlike the continue statement. 

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
