#!/bin/bash

#Judge the argument number
if [ $# != 1 ] 
then
	echo "Wrong format! Example:[ ./spider.sh www.sohu.com]"
	exit 1
fi
#Get the email address using wget and grep
for e_mail in `wget -O - -q $1|grep -E -o "\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"`
do
	#Print the output to the termial
	echo "$e_mail ${e_mail%@*}"
	#Print the output to the e_mail file
	echo "$e_mail ${e_mail%@*}">>e_mail
done
