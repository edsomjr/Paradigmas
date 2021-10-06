#include <string.h>
#include "coin_change.h"

#define MAX 1000
#define oo  1000000001

/* st[c][i] = mínimo de moedas para troco c usando as i primeiras moedas
   de  coins; ps[C][i] marca se a moeda coins[i] foi escolhida ou não */
static int st[MAX][MAX], ps[MAX][MAX];

/* Solução do coin change usando programação dinâmica */
static int dp(int c, int i, const int *coins)
{
    int res;

    /* Caso base: troco vazio */
    if (c == 0)
        return 0;

    /* Troco pendente, sem opções de moedas */
    if (i == 0)
        return oo;

    /* Consulta a resultados já computados */
    if (st[c][i] != -1)
        return st[c][i];

    /* Não escolhe a moeda coins[i] */
    res = dp(c, i - 1, coins);
    ps[c][i] = 0;

    if (coins[i - 1] <= c) {
        /* Escolhe uma moeda com valor coins[i] */
        int r = dp(c - coins[i - 1], i, coins) + 1;

        if (r < res) {
            res = r;
            ps[c][i] = 1;
        }
    }

    /* Memorização */
    st[c][i] = res;

    return res;
}

void coin_change(int *xs, int C, int N, const int *coins)
{
    int p, i = N;

    /* Inicializa as tabelas e o vetor xs */
    memset(st, -1, sizeof st);
    memset(ps, -1, sizeof ps);
    memset(xs, 0, N * sizeof(int));

    /* Resolve o problema */
    dp(C, N, coins);

    /* Resgata as moedas utilizadas */
    p = ps[C][N]; 

    while (i > 0 && p != -1)
    {
        if (p == 0)
            i--;
        else
        {
            xs[i - 1]++;
            C -= coins[i - 1];
        }

        p = ps[C][i];
    }
}
