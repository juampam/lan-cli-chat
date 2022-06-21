#!/bin/bash
destdir="./database.log"
n="0"
key=$(python3 ./key.py)
$key
read -p 'Username: ' uservar

while [ $n -le 1 ]
do

	IFS= read -p $uservar: message
	if [ -f "$destdir" ]
		then 
    		echo "$uservar: $message" >> "$destdir"
	fi
	
done


