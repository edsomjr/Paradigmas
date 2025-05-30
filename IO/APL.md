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

A função _Write Text File_ (`⎕NPUT`) é uma função diádica escreve uma string em um arquivo. A sua sintaxe de uso é 
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
