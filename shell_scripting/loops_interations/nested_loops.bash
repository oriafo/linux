#!/bin/bash

#Demonstarte the execution of loop inside of another loop for extended fuctionality. 

a=0
while [ $a -lt 10 ]
do
	b=$a 
	while [ $b -ge 0 ]
	do 
		echo -n $b 
		b=`expr $b - 1`
	done
	echo 
	a=`expr $a + 1`
done 
