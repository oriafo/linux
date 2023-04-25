#!/bin/bash

#This shows how to return a value in shell function

a=1
b=2

addition(){
	echo `expr $a+$b`
	return  
}

#call the fuction
addition

#check return value. note that the return value will be zero if the previosly executed command was successful, but will return one if the previously executed command is unsuccessful. 

return_valu=$?
echo "Return value id $return_value" 
