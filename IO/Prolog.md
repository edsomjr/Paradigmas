## Prolog

### Escrita em console

Em Prolog, a escrita na saída padrão (`stdout`) pode ser feita por meio do predicado `writeln/1`, cujo
parâmetro `X` é a variável cujo conteúdo será escrito. A impressão termina com uma quebra de linha.

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
caracteres a serem lidos: caso não esteja definida, ao final da leitura será feita até o fim de arquivo e
esta variável conterá o número de caracteres lidos. `String` indica a variável que conterá a string lida.

O código abaixo exemplifica a leitura de todo o conteúdo da entrada padrão na string `S`:

```prolog
read_string(user_input, _, S).
```

O predicado `read_string/5` tem a seguinte assinatura:

```prolog
read_string(+Stream, +SepChars, +PadChars, -Sep, -String).
```

`SepChars` é uma string com os caracteres delimitadores: a leitura será feita até que um desses 
caracteres seja encontrado. `PadChars` são caracteres que serão ignorados no prefixo ou no sufixo da
string lida. Ao final da leitura, `Sep` conterá o caractere que encerrou a leitura, ou o valor -1,
caso a leitura tem se encerrado com fim de arquivo.
