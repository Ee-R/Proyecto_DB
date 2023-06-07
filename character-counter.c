#include <stdio.h>
#define SIZE 65532

int count_chars(char*);

int main(){
  char in[SIZE];
  fgets(in, SIZE,stdin);
  fprintf(stdout,"%d\n",count_chars(in));
  return 0;
}


int count_chars(char* str){
  int i = 0;
  while(*(str+i+1) != '\0'){i++;}
  return i;
}

