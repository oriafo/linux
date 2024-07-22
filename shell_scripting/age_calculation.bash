#!/bin/bash

#This script accept input from users and tell them how old they would be in 50 years time.

echo -n "Please enter your name:"
read name
echo -n "Please enter your current age:" 
read age
current_year=`date "+%Y"`
echo At "$(((50-$age)+$current_year))" Daniel will be 50 year 
