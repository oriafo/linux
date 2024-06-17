#!/bin/bash

#This script check for subnet that is up and send email to a specified mail showing the subnet that are down.

sending_mail(){
for i in $@
do
echo $i 
	ping -c 1 $i &> /dev/null 
	if [ $? -ne 0 ]
	then 
		echo "testing message" | mail -s "Status report for $i hostname" abrahamibharunujele@gmail.com <<< "Could not reach $i hostname, because hostname is down" -A /home/dikodin/Documents/Devops/shell_scripting/use_cases/mail_documentation.txt 
	fi 
done
}

#This message body is being sent into an unnamed file and sent along as an attachment intead of it appearing in the message body. along side the attached document. i will fix that later. 

sending_mail 192.168.43.231 google.com 192.167.43.232 192.168.0.186  
