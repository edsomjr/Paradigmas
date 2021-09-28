## APL

### Símbolos

- http://xahlee.info/comp/unicode_APL_symbols.html

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
    - Ou lógico: ∨ (diádico, U+2228, PREFIX: <prefix> 9, TAB: v v <tab>
    - Reduce: / (operador, monádico)
    - Iota: ⍳ (monádico, U+2373, ⍳n = 1 2 3 4 ... n)
    - Enclose: ⊂ (subset, monádico, U+2282 PREFIX: <prefix> z)

* Comparar o desempenho do fatorial primitivo !, da implementação recursiva dfns e por redução com iota

### Códigos

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
