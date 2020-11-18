### Unificação

- Processos de unificação:
    1. variável & qualquer termo: a variável unificada e atada com qualquer termo, inclusive com outras variáveis
    2. primitivas & primitivas: dois termos primitivos (átomos ou inteiros) só se unificam se ambos são idênticos
    3. structure & structure: se unificam se tem mesmo functor e mesma aridade, e cada par de argumentos correspondentes se unifica
- O predicado _built-in_ `=/2` é bem sucedido se ambos argumentos se unificam, e falha em caso contrário
- Ex.:
```
?- a = a.
true.

?- a = b.
false.

?- p(a, b) = p(a, b).
true

?- p(a, b) = p(a, c).
false.

?- x(y, z(i, j)) = x(y, z(i, j)).
true.

?- x(y, z(i, j)) = x(y, z(j, i)).
false.
```
- Se uma variável se unificar com uma primitiva, ela assume seu valor
- Ex.:
```
?- X = a.
X = a.

?- 2 = Y.
Y = 2.

?- f(x, y) = f(X, y).
X = x.

?- f(x, y) = f(X, z).
false.

?- f(x, y) = f(X, Y).
X = x.
Y = y.
```
- Variáveis também se unem:
```
?- A = B.
A = B.

?- f(X, y) = f(Z, y).
X = Z.

?- X = Y, Y = teste.
X = Y, Y = test.

?- X = Y, a(Z) = a(Y), X = teste.
X = Y, Y = Z, Z = teste.

?- X = Y, Y = 2, write(X).
2
X = Y, Y = 2.

?- f(A, B) = C, write(C), nl, A = a, B = 8, write(C).
f(_6142,_6144)
f(a,8)
A = a,
B = 8,
C = f(a, 8).

?- f(b, X) = f(b, c(Y, d)), X = teste.
false.

?- f(X) = f(x, y).
false.

?- f(x, y, z) = f(X, X, z).
false.
```
- A variável anônima é um _wildcard_, e não ata a valor algum
- Múltiplas instâncias não implicam em valores iguais
- Comentar também o predicado `\=/2` que unifica apenas se os valores são distintos

### Listas

- Em Prolog, uma lista é uma coleção de termos
- Os termos podem ser qualquer tipo de dados do Prolog, incluindo estruturas e outras listas
- Sintaxe:
```
[term1, term2, ..., termN]
```
- A lista vazia é denotada por `[]`, e também denominada `nil`
- A unificação funciona em listas da mesma forma que funciona para estruturas de dados
```
?- asserta(f([a, b, c], d)).
true.

?- f(X, d).
X = [a, b, c].

?- [_, X, _] = [1, 2, 3].
X = 2.
```
- A notação `[X | Y]` ata `X` ao primeiro elemento da lista, chamado **head**, e ata `Y` a uma lista com todos os demais, denominada **tail**
```
?- [H|T] = [1, 2, 3, 4, 5].
H = 1,
T = [2, 3, 4, 5].

?- [H|T] = [1].
H = 1,
T = [].

?- [H|T] = [].
false.
```
- Podem ser listados vários elementos antes da barra, separados por vírgulas
- Contudo, após a barra deve haver um único elemento (uma lista)
```
?- [A, B, C | T] = [1, 2, 3, 4, 5].
A = 1,
B = 2,
C = 3,
T = [4, 5].
```
- Embora tenha uma sintaxe especial, uma lista é, de fato, um predicado de dois argumentos
- O primeiro argumento do predicado `./2` é o **head** da lista, e o segundo é o **tail**
- No SWI-Prolog, este operador foi substituído por `'[|]'`
```
?- L = '[|]'(1, '[|]'(2, '[|]'(3, []))).
L = [1, 2, 3].
```
- A estrutura interna da lista é adequada para rotinas recursivas
- O predicado `member/2` determina se um termo é ou não membro da lista
- Ela pode implementada da seguinte maneira:
```
member(H, [H|T]).
member(X, [H|T]) := member(X, T).
```
- A primeira representa o caso base: o elemento pertence a lista se ele for o **head**
- Um fato com variáveis como argumentos funciona como uma regra
- A segunda é a chamada recursiva.
- Observe que o caso base é declarado antes da chamada recursiva
- O caso base da lista vazia já está incluso na segunda clásula: `member(X, [])` falha, pois
`[]` e `[H|T]` não unificam
- O predicado `append/3` anexa o segundo argumento ao primeiro, guardando o resultado no terceiro:
```
?- append([1, 2], [3, 4, 5], X).
X = [1, 2, 3, 4, 5].
```
- Ela pode ser implementada da seguinte forma:
```
append([], X, X).
append([H|T1], X, [H, T2]):-
    append(T1, X, T2).
```
- Um resultado possível de `append/3` é decompor listas:
```
?- append(X, Y, [1, 2, 3]).
X = [],
Y = [1, 2, 3] ;
X = [1],
Y = [2, 3] ;
X = [1, 2],
Y = [3] ;
X = [1, 2, 3],
Y = [] ;
false.
```
- É possível criar vários fatos a partir de uma única lista, chamando `assertz/1` no **head** da lista recursivamente:
```
list_to_facts([]).
list_to_facts([H|T]):-
    assertz(fact(H)),
    list_to_facts(T).
```
- O processo inverso é mais complicado (fatos para lista)
- Para isto, Prolog fornece o predicado `findall/3`: o primeiro argumento é o padrão para os teremos da lista resultante, o segundo o objetivo, e o terceiro a lista resultante
- Exemplo:
```
findall(X, fact(X), L).
L = [fact1, fact2, ..., factN].
```

### Operadores

- Os operadores aritméticos em Prolog são _functors_ (por exemplo, `+/2`)
```
?- display(2 + 2).
+(2,2)
true.

?- display(1*2 + 3).
+(*(1,2),3)
true.
```

- Qualquer _functor_ pode ser um operador, de modo que Prolog pode ler a estrutura em um formato diferente
- Os operadores podem ser
    1. infixados: ex. `3 + 4`
    2. prefixado: ex. `-7`
    3. pós-fixado: ex. `8 factorial`
- A cada operador é associado uma precedência, representada por um inteiro entre 1 e 1200
- Quanto maior a precedência, menor o número
- Operadores podem ser definidos por meio do predicado `op/3`, cujos argumentos são a precedência, associatividade e o nome do operador
- A associatividade é definida pelos padrões `'fxx', 'xfx', 'xxf'`, por exemplo, onde `f` indica a posição do operador
- Para declarar um operador em um arquivo fonte, a sintaxe é
```
:- op(precedencia, associatividade, nome).
```
pois `op/3` é uma diretiva, não um predicado
- Ex.:
``` 
f(x, y).
:- op(100, 'xfx', f).

?- a f b.
false.

?- x f y.
true.

% Ver o arquiv polyon.pl.
```
- É possível adicionar fatos com a notação de operadores
- A notação de operadores, em conjunto com a ordem de precedência dos operadores, podem levar a resultados inesperados
- Por outro lado eles permitem interfaces mais naturais para o usuário, dispensando o uso de vírgulas e parêntesis
- No caso de dois operadores de mesma precedência, a ordem de associatividade fica a cargo do _listener_ Prolog
- O caractere 'y' no parâmetro que descreve a associatividade descreve se o operador é não-associativo (ausência de 'y') ou a direção da associatividade (posição do 'y'):
    1. infixo: 'xfx' (não associativo), 'xfy' (R to L), 'yfx' (L to R)
    2. pré-fixa: 'fx' (não associativo), 'fy' à (L to R)
    3. pós-fixada: 'xf' (não associativo), 'yf' (R to L)
- Ver `codes/ops.pl` 
- Os parêntesis podem ser utilizados para modificar a ordem de precedência ou a associatividade
- O predicado _built-in_ `is` computa a expressão dada, enquanto o predicado `=/2` unifica os resultados sem computá-los.
```
?- X is 2 + 3.
X = 5.

?- X = 2 + 3.
X = 2+3.

?- 5 = 2 + 3.
false.
```
- Em Prolog, as cláusulas são estruturas de dados escritas com sintaxe de operadores
- O _functor_ **neck** `:-` é um operador infixado de dois argumentos
```
:-(Head, Body).
```
- O corpo é uma estrutura de dados com o _functor_ `and` (vírgula):
```
,(objetivo1, ,(objetivo2, ..., ,(objetivoN))).
```
- Note a ambiguidade semântica do operador vírgula na expressão acima: ele tanto é o separador dos argumentos quando o 'e' lógico

### Cut

- O predicado **cut** (`!`, ponto de exclamação) permite interromper o processo de _backtracking_
- Ele congela todas as decisões tomadas pelo _backtracking_ até o momento
- O principal motivo para o uso deste operador é o aumento de performance
- Ele é motivo de controvérsia entre os puristas do paradigma lógico e os pragmáticos
- O operador **cut** é considerado o **goto** do paradigma
- Ele habilita a poda no _backtracking_ do _listener_ Prolog
- O predicado `not/1` é implementado em termos do operador **cut** e do predicado `call/1`, o qual invoca um predicado:
```
not(X) :- call(X), !, fail.
not(X).
```

### Estruturas de controle
