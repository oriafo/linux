#!/bin/bash

#This script delete specified file(s) from the terminal.

touch file1 file2
echo -n "please enter file name to be deleted:"
read file
echo "press 'y' if you wish to delete the file or press 'n' if you wish to change your mind" 
rm -i $file
echo "Thats your decision" 
