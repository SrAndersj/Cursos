#include <stdio.h>

int main()
{

    int array[5];

    int i;

    for (i = 0; i < 5; i++)
    {
        array[i] = i * 2;
    }

    for (i = 0; i < 6; i++)
    {
        printf("array[%d]= %d \n ",i, array[i]);
    }

    array[6]=81; //mirar como aparece este error
}