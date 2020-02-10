/* As diretivas de pré-processador ifndef, define e endif permitem
 * a múltipla inclusão deste arquivo via #include sem erro de 
 * duplicidade de declarações */
#ifndef COIN_CHANGE_H
#define COIN_CHANGE_H

/* Declaração da função */
extern void coin_change(int *xs, int C, int N, const int *coins);

#endif
