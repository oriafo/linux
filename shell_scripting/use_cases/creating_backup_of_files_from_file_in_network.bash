#!/bin/bash

#This code help to backup files from a shared directory in a network to a directory in your local system

#mount shared directory 
mount -t cifs //192.168.1.16/2tbShared/Shubham/BlogImages //home/dikodin/Documents/Devops/shell_scripting/use_cases/2tbshard -o username=edureka,password=edureka 

#What to backup
backup_files="//home/dikodin/Documents/Devops/shell_scripting/use_cases/2tbshard" 

#Where to backup to
dest="//home/dikodin/Documents/Devops/shell_scripting/use_cases/backup" 

#Create archive filename
day=$(date +%A)
hostname=$(hostname -s)
archive_files="$hostname-$day.tgz"

#Print start status message
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

#Backup the files using tar
tar czf $dest/$archive_file $backup_files

#Print end status message
echo
echo "Backup finished"
date 

#Long listing of files in $dest to check file sizes 
ls -lh $dest

#Unmount
umount //home/dikodin/Documents/Devops/shell_scripting/use_cases/2tbshard 
