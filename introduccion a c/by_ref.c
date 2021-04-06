#include <stdio.h>

void duplicar(int *a)

{

    *a *= 2;
}

int main()
{
    int a = 5;
    printf("antes de duplicar a = %d\n", a);

    duplicar(&a);

    printf("despues  de duplicar a = %d\n", a);
}



// esto se conoce como pasaje por 
// referencia en el lenguaje c lo hacemos con punteros