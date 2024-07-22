#!/bin/bash

#Used to perform loop on some item provided some conditions are true

a=0
while [ $a -lt 10 ]
do
	echo $a
	a=`expr $a + 1`
done  
