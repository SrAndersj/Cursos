#include <stdio.h>

int main(){

    int n=5;
    int *pi=&n;  //entero ocupa  cuatro bit
    char c ='A';
    char *pc=&c;  // un caracter esta albergado en un bit

    printf("Antes pi =%p y pc %p\n",pi,pc);

    pi++;
    pc++;
    printf("despues pi =%p y pc %p\n",pi,pc);

}