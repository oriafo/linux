#!/bin/bash

#THe script demonstrate passing parameters to your function

passing_parameter(){
	echo "$0/ $1/ $2/ $3/ $@" 
}

#call the function
passing_parameter parameter as argument
