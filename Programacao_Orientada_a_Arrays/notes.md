## APL

### Símbolos

- http://xahlee.info/comp/unicode_APL_symbols.html
- Fonte:  APL385 font

### Características

* TryAPL
    - É uma notação matemática que também é executável por máquina
    - Composta por funções, vetores e atribuições
    - Qualquer código que pode ser aplicado a dados é chamado função (ex.: operadores adição + e subtração -)
    - Números negativos são indicados por meio de um símbolo de negativo em posição elevada (¯, macron, U+af, TAB: - - <tab>)
    - Muitas funções de APL podem ser aplicadas monadicamente (prefixada, um operando) ou diadicamente (infixada, dois operando, um à esquerda e outro à direita)
    - Todos os dados estão contidos em arrays
    - Um array é uma coleção retangular de números, caracteres e arrays, arranjados ao longo de um ou mais eixos
    - Arrays especiais:
        * escalar: um único número
        * vetor: um array unidimensional
        * matriz: um array bidimensional
    - Vetores são declarados separando seus elementos por espaços
    - Strings são vetores de caracteres
    - Tanto caracteres quanto strings são delimitadas por aspas simples
    - Números são tratados internamente pela APL quanto ao tamanho e tipo e podem ser misturados sem problemas (inteiros, booleanos (zero ou um), floats e complexos), inclusive tratando problemas de precisão
    - Notação científica é utilizada para números muito grandes ou pequenos
    - O caractere 'J' separa a parte real da parte imaginária em números complexos

* Símbolos
    - Comentários, up shoe jot: ⍝ (U+235D, TAB: o n <tab>)
    - Adição: + (binário, diádico)
    - Subtração: - (binário, diádico)
    - Diamante, statament separator: ⋄ (U+22C4, TAB: < > <tab>, ^ v <tab>), separa múltiplas expressões em uma mesma linha
    - Simétrico: - (monádico), -b equivale a 0-b
    - Multiplicação: × (multiplicação, U+d7, TAB: x x <tab>)
    - Divisão: ÷ (diádico, U+f7, TAB: : - <tab> )

TODO: primeiro tutorial, atribuições

## TryAPL tutorial

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

