/* Calcula o troco mínimo de C centavos. O sistema utilizado não é canônico */
#include <stdio.h>
#include "coin_change.h"

int main() {
    const int coins[] = { 1, 4, 5, 9, 14, 19 }, N = 6;
    int C, xs[N], i;

    printf("Insira o valor do troco: ");
    scanf("%d", &C);
    coin_change(xs, C, N, coins);

    printf("Troco para %d centavos:\n", C);
    for (i = 0; i < N; ++i)
        if (xs[i]) 
            printf("%d moeda(s) de %d centavo(s)\n", xs[i], coins[i]);

    return 0;
}
