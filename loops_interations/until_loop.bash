#!/bin/bash

#Used to execute some commands until some conditions are true

a=0

until [ ! $a -lt 10 ] 
do
	echo $a
	a=`expr $a + 1`
done
