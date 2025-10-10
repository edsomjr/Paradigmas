## Prolog

### Escrita em console

Em Prolog, a escrita na saída padrão (`stdout`) pode ser feita por meio do predicado `writeln/1`, cujo
parâmetro `X` é a variável cujo conteúdo será escrito. A impressão termina com uma quebra de linha.

Por exemplo, o código abaixo imprime a mensagem `"Hello"` no terminal.

```prolog
writeln('Hello').
```

Para imprimir sem a quebra de linha, utilize o predicado `write/1`.

### Leitura em console

A leitura a partir da entrada padrão (`stdin`) pode ser realizada, em Prolog, por meio do predicado
`read_string/3`, ou da variante `read_string/5`.

A assinatura do predicado `read_string/3` é a seguinte:

```prolog
read_string(+Stream, ?Length, -String)
```

`Stream` é o fluxo de dados de onde a string será lida: o valor `user_input` pode ser utilizado para
indicar a entrada padrão. Se tiver valor inteiro definido, `Length` indicará a quantidade máxima de
caracteres a serem lidos: caso não esteja definida, a leitura será feita até o fim de arquivo e
esta variável conterá o número de caracteres lidos. `String` indica a variável que conterá a string lida.

O código abaixo exemplifica a leitura de todo o conteúdo da entrada padrão na string `S`:

```prolog
read_string(user_input, _, S).
```

O predicado `read_string/5` tem a seguinte assinatura:

```prolog
read_string(+Stream, +SepChars, +PadChars, -Sep, -String)
```

`SepChars` é uma string com os caracteres delimitadores: a leitura será feita até que um desses 
caracteres seja encontrado. `PadChars` são caracteres que serão ignorados no prefixo ou no sufixo da
string lida. Ao final da leitura, `Sep` conterá o caractere que encerrou a leitura, ou o valor -1,
caso a leitura tem se encerrado com fim de arquivo.

### Conversões entre tipos de dados

Uma vez que a leitura sempre resulta em uma string, pode ser necessária a conversão da entrada lida
para diferentes tipos de dados.

#### String para inteiro

Para converter de string para inteiro é possível usar o predicado `number_string/2`, cuja assinatura é

```prolog
number_string(?Number, ?String)
```

Ao menos uma dentre os dois parâmetros deve ser instanciado. A conversão é bidirecional, isto é, 
pode-se converter de string para inteiro ou de inteiro para string.

O código abaixo lê de um único número inteiro a partir da entrada e o imprime na saída.

```prolog
main :-
    read_string(user_input, "\n", "\n", _, S),
    number_string(X, S),
    writeln(X).
```

#### String para lista de string

O predicado `split_string/4` recebe um string como parâmetro e retorna uma lista de substrings, 
delimitadas a partir dos caracteres separadores indicados. Sua assinatura é 

```prolog
split_string(+String, +SepChars, +PadChars, -Substrings)
```

`SepChars` é uma string de caracteres separadores e `PadChars` são caracteres que serão ignorados no
prefixo e no sufixo de cada substring encontrada. `Substrings` é uma lista com as substrings identificadas.

O código abaixo lê uma string da entrada padrão e imprime a lista das substrings delimitadas por um
ou mais espaço em branco.

```prolog
main :-
    read_string(user_input, "\n", "\n", _, S),
    split_string(S, " ", " ", L),
    writeln(L).
```

#### Lista de strings para lista de inteiros

Dada uma lista de elementos do tipo $A$, é possível obter uma lista de elementos do tipo $B$, de mesmo
tamanho, onde $b_i = f(a_i)$, onde $f: A\to B$ é uma função, por meio do predicado `map_list/3`, cuja assinatura é

```prolog
map_list(:Goal, ?X, ?Y).
```

Se ambas listas contém $N$ elementos, este predicado realizará $N$ consultas

```prolog
call(Goal, x1, y1),
call(Goal, x2, y2),
...
call(Goal, xN, yN),
```

Por exemplo, o código abaixo lê $N$ inteiros da entrada padrão, todos em uma mesma linha e separados
por um ou mais espaços em branco em uma lista `X`, a qual será impressa na saída padrão. 

```prolog
main :-
    read_string(user_input, "\n", "\n", _, S),
    split_string(S, " ", " ", L),
    maplist(number_string, X, L),
    writeln(X).
```
