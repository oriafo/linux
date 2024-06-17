#!/bin/bash

#This script is used to demonstrate command substitution. this is very handy in executing command inside of an expression 

List=`ls`
Date=`date`
echo "Today's date is" $Date 
echo "This list of files are" $List 
