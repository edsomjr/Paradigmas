## APL

### Símbolos

- http://xahlee.info/comp/unicode_APL_symbols.html

### Arrays

    - Todos os dados estão contidos em arrays
    - Um array é uma coleção retangular de números, caracteres e arrays, arranjados ao longo de um ou mais eixos
    - Os elementos de um array podem ter tipos distintos
    - Arrays especiais:
        * escalar: um único número, dimensão zero
        * vetor: um array unidimensional
        * matriz: um array bidimensional
    - Vetores são declarados separando seus elementos por espaços
    - Parêntesis podem ser utilizados para agrupar vetores

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
    - A função ⍴ também pode ser usada monadicamente, onde retorna o comprimento de suas dimensões
    - A string vazia é representada por ''
    - Matrizes com uma única linha e vetores são distintos
    - Identidade: `X ≡ ⍴ (X ⍴ A)`
    - O rank de um vetor é igual ao comprimento do seu shape. Assim, o rank pode ser computado por meio do operator `⍴⍴`
    - A função ⍴ pode ser usada para conversões entre um escalar x e um vetor v = {x} com um único componentes
        * `1 ⍴ x`   ⍝ de x para v`
        * `⍬ ⍴ (1 ⍴ x))     ⍝ de v para x`
            
* TryAPL - Funções
    - Uma função pode ser aplicada monadicamente ou diadicamente (um ou dois argumentos)
    - Por exemplo, diadicamente a função - é a subtração, monadicamente ela produz o simétrico em relação à adição
    - Há dois tipos de funções: escalares e mistas
        * Funções escalares navegam nos diferentes níveis dos arrays até localizar e operar nos escalares. Ex.: - monádico)
        * A estrutura se mantem, e apenas o conteúdo é alterado
        * Funções escalares diádicas obtém seus operandos das localizações correspondentes de seus argumentos. Se as formas dos argumentos diferem ocorre um erro
        * Se um dos argumentos é escalar, ele é replicado para todos os escalares do outro argumento
        * O mesmo vale para escalares dentro do argumento, após o pareamento
        * Funções mistas tomam seus argumentos na íntegra, ou em subestruturas
        * Por exemplo, ⍴ monádico considera todo seu argumento
    - Funções definidas pelo programador: 3 tipos
    - Uma função definida pelo usuário se comporta como as funções primitivas: no máximo dois argumentos e são chamadas monadicamente (prefixada) ou diadicamente (pós-fixada)
    - Dfns: uma dfn (dynamica-function) é delimitada por chaves e seus argumentos à esquerda e à direita são representados pelas letras gregas alpha (⍺) e omega (⍵ ), respecivamente
        * Na versão monádica, apenas o ⍵ é utilizado
        * São funções anônimas (lambdas), podem ser usadas inline
        * É possível replicar o construto if-then-else dentro de uma dfn por meio da sintaxe { a : b ⋄ c }, que equivale a if a then b else c, e a tem que ser um valor booleano (0 ou 1)
        * As funções relacionais retornam booleanos e são funções escalares
    - Funções tácitas (tacit): são expressões sem dados à direta (livre de pontos?)
        * Uma úníca função é sempre tácita (ex. f←×)
        * Funções tácitas mais longas são chamadas trens, onde cada vagão é uma função ou vetor
        * Trens podem ser monádicos ou diádicos (dependem da combinação interna dos operadores)
        * Um trem com dois carros monádicos é chamado atop (tradução?) 
            * (f g) X é equivalente a f (g X). f é evaluada (avaliada?) "atop" o resultado de g
            * um trem não nomeado deve ser colocado entre parêntesis)
        * Um trem com três carros monádico é um fork. Há duas versões
            * (f g h) X equivale a (f X) g (h X) (S combinator?)
            * (A g h) X equivale a A g (h X) (S combinator?), A é um array
            * Em geral (sempre?), g deve ser diádica, e f e h monádicas)
        * Os trens diádicos estão relacionados aos monádicos
            * X (f g) Y equivale a f (X g Y)
            * X (f g h) Y equivale a (X f Y) g (X h Y)
            * X (A g h) Y equivale a A g (X h Y)
        * Dentro de um trem os operadores ⊣ e ⊢ , diadicamente, retornam os argumentos à esquerda e a direita, respectivamente. Monadicamente retornam sempre o argumento da direita
        * Para trens de tamanho quatro ou maior, a regra é simples: os últimos 3 se tornam um trem de tamanho 3 e são tratados como uma única função. O que resta será um atop, um fork ou é preciso repetir a operação. Ex.:
            * (p q r s) X equivale a (p (q r s)) X = p ((q r s) X) = p ((q X) r (s X))
            * X (p q r s t) Y = (X p Y) q ((X r Y) s (X t Y))
        * Trens podem ser usados para simplificar ((cond1 x) and (cond2 x) and ... and (condN x)) para cond1 ∧ cond2 ∧ ... ∧condN

- TryAPL - Reduce/Scan
    - Um operador recebe um ou dois operandos (geralmente funções) como argumentos, e retorna uma função a qual pode ser monádica ou diádica
    - O operador reduce '/' é monádico e retorna uma função ambivalente (monádica ou diádica). O nome diz respeito ao fato de que ele sempre reduz o rank do argumento em 1 unidade
    - A redução de um vetor é direta:
        * F/a b c d e ... equivale a ⊂ a F b F c F d F e
        * o resultado tem o mesmo shape do argumento, exceto o último eixo
        * Como os operadores em APL são associativos à direita, isso afeta a redução:
            -/1 2 3 4 5 = 1 - 2 - 3 - 4 - 5 = (1 - (2 - (3 - (4 - 5)))) = (1 - (2 - (3 + 1))) = (1 - (2 - 4)) = (1 + 2) = 3 ⍝ soma alternada
        * Em arrays de ranks maiores, a redução se aplica sempre na última dimensão
        * O operador ⌿ (reduce first) reduz em relação à primeira dimensão
        * para reduzir a k-ésima dimensão, use a notação f/[k]
        * f[1] equivale a f⌿
    - Na forma diádica, a redução L f/ R é uma redução que usa uma janela de tamanho L em R
    - Esta redução por janela não altera o rank do argumento
    - Se o primeiro argumento é negativo, a janela é invertida    

TODO: continuar em scan

* Símbolos
    - Atribuição: ← (left arrow, U+2190, TAB: <- <tab>, PREFIX: <prefix> `)
    - Igualdade: = (diádico, PREFIX: <prefix> 5)
    - Fatorial: ! (monádico, PREFIX: <prefix> _)
    - Exponencial: * (diádico, PREFIX: <prefix> p)
    - Valor absoluto: | (monádico, PREFIX: <prefix> m)
    - Depth: ≡ (identical to, U+2261, TAB: = = <tab>, PREFIX: <prefix> <shift> ç) 
    - Reshape: ⍴ (diádico, rho, U+2374, TAB: r r <tab>, p p <tab>, PREFIX: <prefix> r)
    - Empty vector: ⍬ (U+236C, zilde, constante, TAB: 0 ~ <tab> PREFIX: <prefix> <shift> {)
    - Alpha: ⍺ (argumento à esquerda, U+237A, TAB: a a <tab>, PREFIX: <prefix> a)
    - Omega: ⍵ (argumento à direita, U+2375, TAB: w w <tab>, PREFIX: <prefix> w)
    - Desigualdade: ≠ (diádico, U+2260, TAB: = / <tab>, PREFIX: <prefix> 8)
    - Maior: > (diádico, PREFIX: <prefix> 7)
    - Menor: < (diádico, PREFIX: <prefix> 3)
    - Menor ou igual: ≤ (diádico, U+2264, TAB: < = <tab>, PREFIX: <prefix> 4)
    - Maior ou igual: ≥ (diádico, U+2265, TAB: > = <tab>, PREFIX: <prefix> 6)
    - Argumento à esquerda: ⊣  (diádico, U+22a3, TAB: - | <tab>, PREFIX: <prefix> |, <prefix> <shift> \)
    - Argumento à direita: ⊢  (diádico, U+22a2, TAB: | - <tab>, PREFIX: <prefix> \)
    - E lógico: ∧ (diádico, U+2227, PREFIX: <prefix> 0, TAB: ^ ^ <tab>
    - Ou lógico: ∨ (diádico, U+2228, PREFIX: <prefix> 9, TAB: v v <tab>
    - Reduce: / (operador, monádico)
    - Iota: ⍳ (monádico, U+2373, ⍳n = 1 2 3 4 ... n)
    - Reduce first: ⌿ (operador, monádico, U+233f, TAB: / - <tab> PREFIX: <prefix> ; )
    - Enclose: ⊂ (subset, monádico, U+2282 PREFIX: <prefix> z)

### Commands

- Ctrl+Shift+Backspace permite consultar as expressões inseridas anteriormente em ordem reversa
- Ctrl+Shift+Enter permite consultar as expressões inseridas anteriormente em ordem direta

### Códigos

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

1. Atribuições
```APL
    times ← ×
    two ← 2
    two times two
4
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

1. Shape
```APL
    ⍴ 'teste'
5
    ⍴ (2 3 ⍴ 1 2 3 4 5 6)
2 3
    ⍴ ⍬
0
```

1. Matrizes de uma única linha e vetores
```APL
    ⍴ 1 2 3 4 5
5
    ⍴ (1 5 ⍴ 1 2 3 4 5)
1 5
```

1. Rank
```APL
    ⍴ 1

    ⍴⍴ 1
0
    ⍴⍴ 1 2 3 4 5
1
    ⍴⍴ (1 ⍴ 2)      ⍝ Escalar 2 para vetor v com um único componente 2
1
    ⍴⍴ (⍬ ⍴ (1 ⍴ 2) )   ⍝ Conversão e v para o escalar 2
0
```

1. Diádico x monádico
```APL
    1 - 2
¯1
    -2
¯2
    - 1 ¯2 3
¯1 2 ¨3
    - (2 2 ⍴ ¯1 2 3 ¯4)
 1 ¯2
¯3  4
    1 2 3 × 4 5 6
4 10 18
    1 2 ÷ 3 4 5
LENGTH ERROR: Mismatched left and right argument shapes
      (1 2) (3 4 5) 6 + (7 8) (9 10 11) 12
8 10   12 14 16   18
    1 2 3 4 × 5
5 10 15 20
    1 2 3 + (4 5 6) (7 8 9) 10
5 6 7   9 10 11   13
```

1. Versões monádicas das funções aritméticas:
```APL
     + 0J1 (1J2 ¯3) 0.4 5J¯6 7e¯9
0J¯1  1J¯2 ¯3  0.4 5J6 7E¯9
      - 0J1 (1J2 ¯3) 0.4 5J¯6 7e¯9
0J¯1  ¯1J¯2 3  ¯0.4 ¯5J6 ¯7E¯9
      × 0J1 (1J2 ¯3) 0.4 5J¯6 7e¯9
0J1  0.4472135955J0.894427191 ¯1  1 0.6401843997J¯0.7682212796 1
      ÷ 0J1 (1J2 ¯3) 0.4 5J¯6 7e¯9
0J¯1  0.2J¯0.4 ¯0.3333333333  2.5 0.08196721311J0.09836065574 142857142.9
```

1. Dfns
```APL
      plus ← {⍺+⍵}
      1 plus 2
3
    1 {⍺+⍵} 2
3
```

1. Funções relacionais
```APL
      1 2 1 3 1 4 = 1 2 2 3 3 3
1 1 0 1 0 0
      1 2 1 3 1 4 ≠ 1 2 2 3 3 3
0 0 1 0 1 1
      1 2 1 3 1 4 > 1 2 2 3 3 3
0 0 0 0 0 1
      1 2 1 3 1 4 < 1 2 2 3 3 3 
0 0 1 0 1 0
      1 2 1 3 1 4 ≥ 1 2 2 3 3 3
1 1 0 1 0 1
      1 2 1 3 1 4 ≤ 1 2 2 3 3 3
1 1 1 1 1 0
```

1. If-then-else
```APL
      max ← {⍺ > ⍵ : ⍺ ⋄ ⍵ }
      1 max 2
2
```

1. Recursão em lambdas
```APL
     {⍵ = 1 : 1 ⋄ ⍵ + ∇ ⍵ - 1} 10       ⍝ soma dos n primeiros positivos
55
```

1. Atop
```APL
      (÷-) 1 ¯2 3 ¯4 5
¯1 0.5 ¯0.3333333333 0.25 ¯0.2
```

1. Forks
```APL
    ⍝ Exemplos do tutorial: pensar em exemplos melhores
  (⍴+≡) 4 6⍴1 (2 3) 3 3  ⍝ The shape plus the depth
2 4
      (1-×)1 0 10 ¯4
0 1 0 2
```

1. Trens diádicos
```APL
    ⍝ Exemplos do tutorial
      3 (×-) 6  ⍝ The sign of the difference
¯1
      4 (×-+) 3   ⍝ The product minus the sum
5
      3 2 0 (2 4 1×+) 11 7 20
28 36 2
```

1. Direita e esquerda
```APL
    ⍝ Exemplos do tutorial
(⊢×1-⊢) 20
3 (⊢⍴⊣) 4 4  ⍝ 4 4⍴3
```

1. Reduções
```APL
    +/1 2 3 4 5
15
    ×/(1 2) (3 4) (5 6)
15 48
    -/1 2 3 4 5     ⍝ soma alternada
    A ← 2 3 ⍴ ⍳6
1 2 3
4 5 6
    +/A
6 15
    +⌿A
5 7 9
3
    2 +/ 1 2 3 4 5
3 5  7 9
    3 +/ 1 2 3 4 5
6 9 12
    A ← 2 5 ⍴ ⍳10
1 2 3 4 5
6 7 8 9 10
    2 +/ A
 3  5  7
11 13 15
19 21 23
    A ← ⍳10
1 2 3 4 5 6 7 8 9 10
    2 -/ A
¯1 ¯1 ¯1 ¯1 ¯1 ¯1 ¯1 ¯1 ¯1 ¯1   
    ¯2 -/ A
1 1 1 1 1 1 1 1 1 1
    all ← ∨/
    all 1 0 0 1 1
0
    any ← ∧/
    any 1 0 0 1 1
1
    fact ← ×/⍳
    fact 7
5040
```
