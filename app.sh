#!/bin/bash
destdir="./chdb"
n="0"
read -p 'Username: ' uservar

while [ $n -le 1 ]
do

	./chdbs.sh &
	IFS= read -p $uservar: message
	if [ -f "$destdir" ]
		then 
    		echo "$uservar: $message" >> "$destdir"
	fi
	
done


