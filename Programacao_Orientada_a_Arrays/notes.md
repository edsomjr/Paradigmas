## APL

### CLI

- é preciso instalar um teclado APL: https://stackoverflow.com/questions/68065520/add-apl-keyboard-layout-on-linux-20-04
    * Adicione um segundo layout extra (Braile, por exemplo, em System -> Region & Language
    * adicione esta linha no .bashrc
        setxkbmap -layout br,apl -variant ,dyalog -option grp:switch
    * A tecla alt right, quando pressionada, mudará entre os dois layouts possíveis

- para encerrar, é preciso chamar a funçã off (quad + off, com quad = right atl + l) https://help.dyalog.com/12.0/index.html?page=html%2Fexit%20from%20apl.htmac

### Símbolos

- http://xahlee.info/comp/unicode_APL_symbols.html
- Fonte:  APL385 font

### Características

* TryAPL - APL Expressions
    - É uma notação matemática que também é executável por máquina
    - Composta por funções, vetores e atribuições
    - Qualquer código que pode ser aplicado a dados é chamado função (ex.: operadores adição + e subtração -)
    - Números negativos são indicados por meio de um símbolo de negativo em posição elevada (¯, macron, U+af, TAB: - - <tab>, PREFIX: <prefix> 2)
    - Muitas funções de APL podem ser aplicadas monadicamente (prefixada, um operando) ou diadicamente (infixada, dois operando, um à esquerda e outro à direita)
    - Todos os dados estão contidos em arrays
    - Um array é uma coleção retangular de números, caracteres e arrays, arranjados ao longo de um ou mais eixos
    - Os elementos de um array podem ter tipos distintos
    - Arrays especiais:
        * escalar: um único número, dimensão zero
        * vetor: um array unidimensional
        * matriz: um array bidimensional
    - Vetores são declarados separando seus elementos por espaços
    - Parêntesis podem ser utilizados para agrupar vetores
    - Strings são vetores de caracteres
    - Tanto caracteres quanto strings são delimitadas por aspas simples
    - Números são tratados internamente pela APL quanto ao tamanho e tipo e podem ser misturados sem problemas (inteiros, booleanos (zero ou um), floats e complexos), inclusive tratando problemas de precisão
    - Notação científica é utilizada para números muito grandes ou pequenos
    - O caractere 'J' separa a parte real da parte imaginária em números complexos
    - Atribuições são feitas por meio do operador diádico seta ( ← ), e comparações de igualdade com o operador =
    - Diferenças entre APL e notação matemática convencional:
        * na matemática, o símbolo - e o fatorial ! ficam em posições diferentes em relação aos seus argumentos
        * a exponenciação não tem um símbolo: o expoente fica superescrito
        * módulo usa duas barras entre o argumento
        * em APL há uma consistência de notação com símbolos pré ou infixados:
            - fatorial: !b
            - expoencial: a * b
            - módulo: |b
        * em matemática a ordem de precedência dos operadores não é sempre clara: cos xy significa cos (xy) ou (cos x) y ? Como avaliar a expressão a / bx ?
        * em APL, a ordem de precedência é única: tudo à direita de um operador é seu único argumentoà esquerda
        * parêntesis podem ser utilizados para mudar a ordem de precedência

* TryAPL - Arrays
    - Todo array tem um depth e um rank
    - Depth: nível de profundidade/recursão
        * um vetor de escalares tem depth = 1
        * um vetor de vetores de depth = 1 tem depth = 2
        * um escalar tem depth zero
        * um vetor que mistura escalares em vetores tem depth negativo
    - Rank: número de dimensões no array
        * escalares tem rank zero
        * vetores tem rank 1
        * matrizes tem rank 2
        * arrays são retangulares: cada linha de uma matriz deve ter o mesmo número de colunas
        * para criar arrays com rank maior do que 1 é preciso usar a função rho ⍴ (reshape), que recebe como argumento à esquerda um vetor dos comprimentos das dimensões e os dados como argumento à esquerda
        * se há dados em excesso o que sobra é ignorado
        * se faltam dados ele retorna ciclicamente ao início dos dados
        * matrizes também podem ser aninhadas, contendo vetores e matrizes
    
TODO: continuar no depth de matrizes

* Símbolos
    - Comentários, up shoe jot: ⍝ (U+235D, TAB: o n <tab>, PREFIX: <prefix>,)
    - Adição: + (binário, diádico)
    - Subtração: - (binário, diádico)
    - Diamante, statament separator: ⋄ (U+22C4, TAB: < > <tab>, ^ v <tab>, PREFIX: <prefix> ')
    - Simétrico: - (monádico), -b equivale a 0-b
    - Multiplicação: × (multiplicação, U+d7, TAB: x x <tab>, PREFIX: <prefix> -)
    - Divisão: ÷ (diádico, U+f7, TAB: : - <tab>, PREFIX: <prefix> =)
    - Atribuição: ← (left arrow, U+2190, TAB: <- <tab>, PREFIX: <prefix> `)
    - Igualdade: = (diádico, PREFIX: <prefix> 5)
    - Fatorial: ! (monádico, PREFIX: <prefix> _)
    - Exponencial: * (diádico, PREFIX: <prefix> p)
    - Valor absoluto: | (monádico, PREFIX: <prefix> m)
    - Depth: ≡ (identical to, U+2261, TAB: = = <tab>, PREFIX: <prefix> <shift> ç) 
    - Reshape: ⍴ (diádico, rho, U+2374, TAB: r r <tab>, p p <tab>, PREFIX: <prefix> r)

### Commands

- Ctrl+Shift+Backspace permite consultar as expressões inseridas anteriormente em ordem reversa
- Ctrl+Shift+Enter permite consultar as expressões inseridas anteriormente em ordem direta

### Códigos

1. Apenas um comentário

```APL
    ⍝ comment
```

1. Adição
```APL
    1 + 2
3
```

1. Subtração
```APL
    1 - 2
¯1
```

1. Duas expressões em uma mesma linha

```APL
    1 + 2 ⋄ 3 - 4
3
¯1
```

1. Simétrico da adição
```APL
    -2 ⋄ 0 - 2
¯2
¯2
```

1. Vetor
```APL
    1 2 3 4 5
1 2 3 4 5
    (1 2 3) (4 5) (6) (7 8 9 10)
1 2 3   4 5   6   7 8 9 10
    'string' 1 (2.3 '4' 0)
string   1   2.3 4 0
```

1. Um caractere
```APL
    'c'
c
```

1. Uma string
```APL
    'string'
string
```

1. Números
```APL
    1 > 2
0
    1 + (2 < 3)
2
    1÷2
0.5
    2×(1÷2)
1
```    

1. Notação científica
```APL
    2000000000000000000÷3000      
6.666666667E14
    5E¯3
0.005
```

1. Complexos
```APL
    1j1÷1j¯1
0J1
```

1. Atribuições
```APL
    times ← ×
    two ← 2
    two times two
4
```

1. Igualdade
```APL
    1 = 2
0
```

1. Notação APL
```APL
    !6          ⍝ fatorial de 6
720
    2 * 3       ⍝ 2 elevado a terceira
8
    |¯3         ⍝ valor absoluto de -3
3
```

1. Ordem de precedência
```APL
    2+3×5
17
    2×3+5
16
    (2×3)+5
11
```

1. Depth
```APL
    ≡ 2
0
    ≡ 'teste'       ⍝ 'teste' = 't' 'e' 's' 't' 'e'
1
    ≡ ((1 2) (3 4 5)) ('um' 'dois' 'três')
3
    ≡ 1 'dois'
¯2
```

1. Matrizes
```APL
    2 2 ⍴ 1 0 0 1
1 0
0 1
    3 3 2 ⍴ 1
1 1
1 1
1 1

1 1
1 1
1 1

1 1
1 1
1 1
    3 2 ⍴ 1 2 3 4 5 6 7 8 9 10
1 2
3 4
5 6
    3 3 ⍴ 'AB'
ABA
BAB
ABA
          2 2 ⍴ ((1 2) (3 4 5)) (1 2 ⍴ 0 1 0) 7.5
 1 2   3 4 5    0 1
         7.5    1 2   3 4 5
```
