## Forth

### Escrita em console

Forth oferece diferentes maneiras de se escrever na saída padrão. A palavra `CR` (_carriage return_)
escreve uma quebra de linha.

#### Escrita de inteiros

Para extrair e escrever o inteiro que está no topo da pilha, pode se usar a palavra `.` (ponto final):

```forth
\ Imprime 5, seguido de uma quebra de linha, na saída
\ A pilha resultante será <4> 1 2 3 4
1 2 3 4 5 . CR
```

Para imprimir o topo sem excluí-lo da pilha, utilize a palavra `DUP`:

```forth
1 2 3 4 5 DUP . CR
```

##### Escrita de strings

Há duas palavras para se escrever uma string literal em Forth: `."` (ponto-aspas) ou `.(` 
(ponto-parêntesis). Ambos escrevem, na saída padrão, em tempo de execução, a string delimitada por
`"` (aspas) ou por `)` (parêntesis à direita), respectivamente.

```forth
\ Imprime a mensagem 'Hello', em uma linha, seguida da mensagem `World`, na linha seguinte
." Hello" CR
.( World) CR
```

A palavra `TYPE` permite a impressão uma palavra armazenada em memória. Ela recebe dois argumentos:
o endereço onde a string está armazenada e o número de caracteres a serem impressos.

A palavra `S"` insere, na pilha, o endereço de memória e o número de caracteres da string literal
delimitada por aspas que foi armazenada em memória.

```forth
\ Armazena uma string literal em memória e imprime em seguida
S" String literal"
TYPE CR
```

### Leitura em console

#### Leitura de strings

Forth lê dados, a partir da entrada padrão (`stdin`), como strings. O espaço para o armazenamento
dessas strings deve ser reservado por meio das palavras `CREATE` e `ALLOT`:

```forth
\ Sintaxe para a alocação de strings
CREATE nome_da_string tamanho ALLOT
``` 

Embora a palavra `ACCEPT` possa ser usada para ler uma string da entrada padrão, ela ecoa a string lida,
o que pode não ser desejável. Para ler sem eco, GForth disponibiliza a palavra `read-line`, a qual
recebe três parâmetros:

1. o endereço onde os caracteres lidos serão armazenados
2. o número máximo de caracteres que devem ser lidos
3. o identificador do arquivo a ser lido. No caso da entrada padrão, use `stdin`

Esta palavra retorna três valores:

1. o número de caracteres efetivamente lidos
2. uma booleana com valor falso se o fim de arquivo foi atingido; ou verdadeiro, caso contrário
3. um código de erro, cujo valor zero indica sucesso

```forth
\ Aloca espaço para leitura de uma string com, no máximo, 100 caracteres
create LINE 100 allot

LINE 100 stdin read-line

\ Remove os últimos dois retornos e deixa, no topo da pilha, o endereço da string
\ e o seu tamanho, nesta ordem
drop drop LINE swap

\ Imprime a string lida
TYPE CR
bye
```

Para ler toda a entrada de uma só vez, até o fim de arquivo, use a palavra `read-file`. Ela tem os
mesmos parâmetros de `read-line`, mas apenas dois de seus retornos (ela não retorna a _flag_ booleana,
uma vez que lê sempre até o fim de arquivo).

```forth
\ Aloca espaço para leitura de uma entrada com, no máximo, 100 caracteres
create LINE 100 allot

LINE 100 stdin read-file

\ Remove o último retorno e deixa, no topo da pilha, o endereço da string
\ e o seu tamanho, nesta ordem
drop LINE swap

\ Imprime a entrada lida
TYPE CR
bye
```

#### Leitura de inteiros

Para ler inteiros da entrada padrão em Forth, é preciso primeiro ler a entrada como string e 
depois proceder com a conversão de string para inteiro.

Em um contexto que a entrada é segura e é garantido que todos os caracteres são decimais (exceto por
espaços em branco e quebras de linha), a conversão pode ser feita por meio da palavra `EVALUATE`, que
inserirá os inteiros lidos, em ordem, na pilha.

```forth
\ Aloca espaço para leitura de uma entrada com, no máximo, 100 caracteres
create LINE 100 allot

LINE 100 stdin read-file

\ Remove o último retorno e deixa, no topo da pilha, o endereço da string
\ e o seu tamanho, nesta ordem
drop LINE swap

\ Converte cada substring decimal no inteiro equivalente, inserindo os mesmos na pilha
EVALUATE

\ Visualiza o conteúdo da pilha
.s CR
bye
```
