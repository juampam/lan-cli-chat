#!/bin/bash

destdir="./database.log"
n="0"
key=$(python3 ./key.py)
variable=$(tput lines)

cat << EOF > someinc.c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#define clear() printf("\033[H\033[J")
#define gotoxy(x,y) printf("\033[%d;%dH", (y), (x))

int main(int argc, char* argv[0]){
        int geek = $variable;
        clear();
        gotoxy(1,geek);     
}
        
EOF

gcc someinc.c -o some
chmod 770 some

read -p 'Username: ' uservar
dd=$(echo $uservar:)
while [ $n -le 1 ]
do
	./some
	IFS= read -p $uservar: message
	echo $message
	read message
	if [$message == "/exit"]
	then
		n=450
	fi
	if [ -f "$destdir" ]
	then 
    		echo "$uservar: $message" >> "$destdir"
	fi
	clear
done


