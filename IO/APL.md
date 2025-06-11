## APL

### Escrita em console

Dentre as diferentes formas de se escrever na saída padrão, APL disponibiliza o símbolo _Quad_ (`⎕`) e a função de sistema _Write Text File_ (`⎕NPUT`).

#### Símbolo `⎕`

É possível escrever na saída padrão atribuindo (por meio do símbolo `←`) uma string ao símbolo `⎕`. O tradicional `Hello, World!` pode ser implementado da seguinte maneira:

```apl
⎕←'Hello, World!'
```

Há, porém, duas características importante a ser destacada. A primeira é que a saída produzida pelo símbolo `⎕` termina com `\r` (`0x0D`), e não com `\n` (`Ox0A`), que é o terminador de linha usando com maior frequência em juízes online, de modo que o código acima pode receber o veredito `PE` (_Presentation Error_). A segunda característica importante é que há uma limitação do número máximo de caracteres que podem ser impressos na saída padrão por meio do símbolo `⎕`: a partir deste limite, a saída fica truncada, o que pode levar a um veredito `WA` (_Wrong Answer_) quando a saída for superior a este limite.

Ambas situações podem ser evitadas usando a função de sistema `⎕NPUT`.

#### Função `⎕NPUT`

A função _Write Text File_ (`⎕NPUT`) é uma função diádica que escreve uma string em um arquivo. A sua sintaxe de uso é 
```apl
R ← X ⎕NPUT Y
```

`Y` é um vetor de duas posições, onde a primeira é o nome do arquivo onde a string será escrita e o segundo é um escalar inteiro especificando o modo de escrita: 

- `0` indica que o arquivo será criado, sinalizando um erro caso já exista;
- `1` indica que o arquivo será criado ou sobrescrito, caso já exista; e
- `2` a string é anexada ao arquivo, caso exista.

`X` é a string a ser escrita e `R` é o número de _bytes_ escritos no arquivo.

No caso de juízes online que utilizam ambiente Unix, o arquivo deve ser `/dev/stdout` e o modo de escrita `2`. O código abaixo apresenta outra versão do `Hello, World!`, usando a função `⎕NPUT`:

```apl
'Hello, World!' ⎕NPUT '/dev/stdout' 2
```

A função `⎕NPUT` usa o caractere `\n` (`⎕UCS 10` em APL) como terminador de linhas e não tem a limitação de tamanho do símbolo `⎕`. Contudo, `X` deve ser uma string, demandando conversões para string caso a saída contenha outros tipos (inteiros, complexos, etc) ou seja multidimensional.

### Leitura em console

Dentre as diferentes formas de se ler informações da entrada padrão, APL disponibiliza o símbolo _Quote-Quad_ (`⍞`) e a função de sistema _Read Text File_ (`⎕NGET`).

#### Símbolo `⍞`

É possível ler uma string, a partir da entrada padrão, atribuindo (por meio do símbolo `←`) a uma variável o retorno do símbolo `⍞`. O código abaixo lê uma linha da entrada padrão e a imprime na saída padrão:

```apl
line←⍞
⎕←line
```

Observe que o símbolo `⍞` lê uma linha por vez (sendo a linha delimitada por um caractere de quebra de linha), sendo que o delimitador não é incluído em seu retorno. Assim como o símbolo `⎕`, há um limite para o tamanho da linha, e caso este limite seja superado a leitura é interrompida com o sinal `EOF INTERRUPT`.

É possível ler todo o conteúdo da entrada de uma só vez, sem a restrição citada, usando a função `⎕NGET`.

#### Função `⎕NGET`

A função _Read Text File_ (`⎕NGET`) é uma função ambivalente que lê o conteúdo de um arquivo. A sua sintaxe de uso é 
```apl
R ← {X} ⎕NGET Y
```

`Y` pode assumir duas formas:

1. ou é uma string contendo o caminho do arquivo a ser aberto; ou
2. é um vetor de dois elementos, onde o primeiro é o caminho do arquivo a ser aberto e o segundo é uma _flag_ que sinalizar o formato da saída: `0` (valor _default_) indica que a saída será uma string, enquanto que `1` indica que a saída será um vetor de strings, onde cada elemento é uma linha da entrada.

Em sua forma diádica, o argumento `X` (opcional) pode ser usado para indicar a codificação de caracteres da entrada. Veja mais detalhes em `https://help.dyalog.com/19.0/#Language/System%20Functions/nget.htm?Highlight=NGET`.

O retorno `R` da função é um vetor de 3 elementos, onde o primeiro é o conteúdo do arquivo, no formato determinado pela _flag_, o segundo indica a codificação de caracteres do conteúdo e o terceiro é um vetor numérico com as primeiras ocorrências dos caracteres de fim de linha.

O código abaixo lê o conteúdo da entrada padrão (em ambientes Linux) como um vetor de strings e imprime, na saída padrão, o vetor obtido e o número de linhas lidas.

```apl
content←⊃⎕NGET '/dev/stdin' 1
⎕←content
⎕←⍴content
```
