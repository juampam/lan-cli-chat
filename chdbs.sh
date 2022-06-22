#!/bin/bash
cat << EOF > someinc.c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#define clear() printf("\033[H\033[J")
#define gotoxy(x,y) printf("\033[%d;%dH", (y), (x))

int main(int argc, char* argv[0]){
        
        clear();
        gotoxy(1,1);     
        return 0;
}
        
EOF
                   

gcc someinc.c -o some
chmod 770 some
./some  

PURPLE='\033[0;35m'
tail -1 ./database.log
#text=$(tail -1 ~/chdb)
#echo -e ${PURPLE}$text${NC}
