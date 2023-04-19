#!/bin/bash

#Used to execute some command while some conditions are true

a=0
while [ $a -lt 10 ]
do
	echo $a
	a=`expr $a + 1`
done  
