#!/bin/bash

#Nested fuction is a fuction that calls another function inside of it

a=1
b=2
 
ist_func(){
	c=`expr $a + $b`
}


2nd_func(){ 
	ist_func	
	d=`expr $c + 10` 
	echo $d 
}

#invoking the functions by calling just ist_func
2nd_func 
