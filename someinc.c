#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#define clear() printf("\033[H\033[J")
#define gotoxy(x,y) printf("\033[%d;%dH", (y), (x))

int main(int argc, char* argv[0]){
        int geek = 38;
        clear();
        gotoxy(1,geek);     
}
        
