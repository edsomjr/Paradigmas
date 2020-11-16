### Regras (**rules**)

- Um predicado é definido por cláusulas, as quais podem ser fatos ou regras
- Uma regra é uma consulta armazenada. A sintaxe é
```
    head :- body.
```
onde `head` é um predicado, `:-` é o **neck symbol**, lido como **se** e `body` é composto por um ou mais objetivos (uma consulta)
- Exemplo: a regra `where_food/2` pode ser definida por
```
    where_food(X, Y) :- location(X, Y), edible(X).
```
- Consultas possíveis:
```
    where_food(X, kitchen).
    where_food(Thing, 'dining room').
```
- Uma mesma regra pode ser definida múltiplas vezes, cada uma com um corpo diferente
- Uma regra é processada da seguinte maneira:
    1. Inicialmente, o padrão do objetivo é unificado com a cabeça _head_ da regra
    2. Se a unificação é bem sucedida, inicia-se uma consulta com os objetivos listados no corpo da regra
- Deste modo, regras permitem consultas em múltiplos níveis
- O primeiro nível é composto pelos objetivos iniciais
- O segundo são os objetivos que aparecem no corpo da regra
- No corpo da regra pode ser utilizadas novas regras, aumentando o nível da consulta
- Regras podem ser usadas para definir conexões não-direcionadas:
```
    connect(X, Y) :- door(X, Y).
    connect(X, Y) :- door(Y, X).
```
- Note o "ou" implícito na definição das duas regras
- Regras/predicados que sempre falham não pode ser utilizadas em consultas compostas, porque não transferem o fluxo de execução adiante, via porta "Exit"
- Nestes casos, é útil adicionar uma nova definição à regra que retorna verdadeiro sempre.
- Um predicado/regra como uma única variável (sem corpo) é sempre bem sucedido
- Nestes caso, pode se usar a variável especial **anônima** (undescore, `_`)
- Relembrando: 
    1. a unificação é o processo de _pattern matching_ do Prolog, e é utilizada na comunicação entre regras e predicados
    2. A execução é controlada pelo mecanismo de _backtracking_ do Prolog
    3. `fail/0` pode ser usado para forçar o retorno do _backtracking_ (via porta Fail)
    4. Pode se forçar o sucesso de uma definição extra com variáveis anônimas e sem corpo
    5. O _backtracking_ substitui os laços de outras linguagens
    6. O _pattern matching_ substitui os testes condicionais e as estruturas de seleção
    7. As regras podem ser testadas individualmente, permitindo o desenvolvimento modular
    8. Regras que usam outras regras encoragjam a abstração de procedimentos e dados

### Aritmética

- Para computar expressões aritméticas, Prolog disponibiliza o predicado _built-in_ `is`
- Sintaxe:
```
    X is <arithmetic expression>
```
- A variável `X` recebe o valor da expressão, e é desatada no _backtracking_
- As expressões são semelhantes às utilizadas em outras linguagens
- Exemplos:
```
?- X is 2 + 2.
?- X is 3*4 + 2.
```
- Parêntesis podem ser utilizado para evitar ambiguidades e alterar a ordem de precedência
```
?- X is 3*(4 + 2).
```
- Para evitar que os operadores relacionais se assemelhem às setas, a ordem dos símbolos é diferente do usual:
```
    X > Y
    Y < Y
    X >= Y
    X =< Y
```
- Exemplos: conversão de Celsius para Fahrenheit:
```
c_to_f(C, F) :-
    F is C*9/5 + 32.

freezing(F) :-
    F =< 32.
```

### Manipulando dados

- Prolog permite a manipulação direta da base de dados por meio de predicados _built-in_:
    1. `asserta(X)`: adiciona a cláusula `X` como primeira cláusula para o seu predicado. Como as rotinas de I/O, sempre falha no _backtracking_ e não desfaz seu trabalho
    2. `assertz(X)`: igual a anterior, mas adiciona como última cláusula do predicado
    3. `retract(X)`: remove a cláusula `X` da base de dados
- Para remover uma clásula, é preciso marcar o predicado como dinâmico, antes da definição do mesmo. Ex.:
```
:- dynamic
    pred/1.
```
- Não há variáveis globais em Prolog: as variáveis são locais às cláusulas
- A base de dados "substitui" as variáveis locais
- Ela permite que as cláusulas compartilhem informações entre si
- `asserts` e `retracts` são as ferramentas para manipular estes dados globais
- Naturalmente, este recursos deve ser utilizado com parcimônio e cuidado, pois ele modifica o estado do programa
- Alguns programadores tentam eliminar dados globais e o uso de `assert` e `retract` em seus códigos Prolog
- É possível escrever programas que não modificam a base de dados, o que elimina o problema das variáveis globais
- Isto pode ser feito passando as informações necessárias por meio dos argumentos dos predicados
- Versão de `assert` que desfaz seu trabalho no _backtracking_:
```
backtracking_assert(X):-
    asserta(X).
backtracking_assert(X):-
    retract(X), fail.
```
- Inicialmente, a primeira cláusula é executada. Se um objetivo posterior falhar, o _backtracking_ vai tentar a segunda cláusula, que desfará o trabalho da primeira e falhar, resultando no efeito desejado.

### Recursão

- Em Prolog, a recursão acontece quando um predicado contém um objetivo que se refere ao próprio predicado
- Como a cada consulta Prolog usa o corpo da regra para criar uma nova consulta com novas variáveis, a recursão acontece naturalmente
- Uma chamada recursiva é composta por duas partes:
    1. Casos-base
    2. Chamada recursiva
- Os casos-base são condições limítrofes (de contorno) que são sabidamente verdadeiras
- O caso recursivo simplifica o problema por meio da remoção de um nível de complexidade, e chamando a regra novamente
- A cada nível, os casos-base são verificados: caso ocorram, a recursão termina; caso contrário, a recursão continua
- Exemplo:
```
is_contained_in(T1, T2):-   % Caso-base
    location(T1, T2).
is_contained_in(T1, T2):-   % Chamada recursiva
    location(X, T2),
    is_contained_in(T1, X).
```
- O escopo das variáveis de uma regra é a própria regra
- Cada nível da recursão tem seu próprio conjunto de variáveis
- A unificação entre o objetivo e o _head_ da cláusula forçam as relações entre as variáveis de diferentes níveis
- Para garantir que os casos base sejam sempre testados, os casos-base devem ser definidos antes da chamada recursiva
- A forma em que a chamada recursiva é implementada afeta a performance das consultas
- Por exemplo:
```
is_contained_in(T1, T2):-   % Chamada recursiva
    location(X, T2),
    is_contained_in(T1, X).
is_contained_in(T1, T2):-   % Chamada recursiva
    location(T1, X),
    is_contained_in(X, T2).
```
- Chamadas do tipo `is_contained_in(X, office)` roda mais rapidamente na primeira versão, pois `T2` é atada em `location(X, T2)`
- Chamadas do tipo `is_contained_in(key, X)` roda mais rapidamente na segunda versão

### Estruturas de Dados

- Uma estrutura de dados combina tipos primitivos (átomos, inteiros, etc) e estruturas em tipos compostos
- A sintaxe é 
```
functor(arg1, arg2, ..., argN).
```
- Cada argumento pode ser um tipo primitivo ou outra estrutura
- Sintaticamente, a declaração de uma estrutura é semelhante à declaração de um fato ou regra
- Ex.:
```
car(peugeot, black, 2).
car(honda, red, 4).
```
- A ordem dos argumentos é importante nas consultas
- Ex.:
```
car(X, red, _).
```
- Campos podem ser ignorados com a variável anônima
- Estruturas podem ser utilizadas em outras estruturas com o intuito de aumentar a legibilidade
- Ex.:
```
car(honda, color(red), doors(4)).
```
- O predicado `not/1` recebe um objetivo como argumento e é bem sucedida quando o objetivo falha, e falha quando o objetivo é bem sucedido

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
