#include <stdio.h>

int main() 
{
    int r0 = 0, r1 = 0, r2 = 1, r3 = 0;

    printf("Numero de termos: \n");
    scanf("%d", &r0);

    printf("Sequência do fibas \n");
    while(r0 > 0)
    {
        printf("%d\n", r1);
        r3 = r1 + r2;
        r1 = r2;
        r2 = r3;

        r0--;
    }

    return 0;
}