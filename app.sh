#!/bin/bash

#COLORS

NC='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White


destdir="./database.log"
n="0"
key=$(python3 ./key.py)
variable=$(tput lines)
shit=$(wc -l $destdir)







IFS=' '
read -a strarr <<< "$shit"
xd=${strarr[0]}
#echo $xd

# -- CENTER --- 


local str width height length
        
width=$(tput cols)
height=$(tput lines)
str="Width = $width Height = $height"
length=${#str}
clear
tput cup $((height / 2)) $(((width / 2) - (length / 2)))

cat colors
echo "Select your color"
read color


read -p 'Username: ' uservar
while [ $n -le 1 ]
do
	IFS= read -p $uservar: message
	echo $message
	if [ -f "$destdir" ]
	then 
		echo -e "$(tput setaf $color)$uservar:$(tput sgr 0)$message" >> "$destdir"
	fi
clear

done


