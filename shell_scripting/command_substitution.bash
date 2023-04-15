#!/bin/bash

#This script is used to demonstrate command substitution

List=`ls`
Date=`date`
echo "Today's date is" $Date 
echo "This list of files are" $List 
