#!/bin/bash

#Used to carry out loop on some items UNTIL the specified conditions becomes true 

a=0

until [ ! $a -lt 10 ] 
do
	echo $a
	a=`expr $a + 1`
done
