#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define clear() printf("\033[H\033[J")
#define gotoxy(x,y) printf("\033[%d;%dH", (y), (x))

int main(int argc, char* argv[0]) {
  		clear();
  	gotoxy(1,20);  
  	printf("_______________________________________\n"); 
	
		printf("\n");
	pid_t p=fork();
	if(p==0){
		execl("./app.sh","./app.sh",NULL,NULL);
		perror("exec1");
		exit(1);
	}
	//waitpid(p,NULL,0);
  	gotoxy(1,2);
		fprintf(stdout,"\n");
		fflush(stdout);
		execl("./chdbs.sh","./chdbs.sh",NULL,NULL);
  	printf("\n");

  return 0;
}

