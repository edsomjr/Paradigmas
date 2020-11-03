## Programação Lógica

- Foi desenvolvida a partir de um teorema desenvolvido no contexto do processamento de linguagens naturais
- Permite prototipamento e desenvolvimento rápidos devido sua proximidade semântica com a especificação lógica do problema ser resolvido
- A programaçaõ sob o paradigma lógico é declarativa
- Os programas são compostos por uma série de relações lógicas e consultas sobre se uma determinada proposição é ou não verdadeira
- Caso seja verdadeira, também é possível determinar qual atribuição de valores lógicos às variáveis da proposição a torna verdadeira
- Para se tornar um paradigma prático, é necessário o apoio de subrotinas extra-lógicas que controlem o I/O e forcem o fluxo de execução do programa

### Prolog

- Prolog = PROgramming in LOGic
- Um programa em Prolog é composto de uma coleção de pequenas unidades modulares, denominadas **predicatos**
- Os predicatos são semelhantes às subrotinas de outras linguagens
- Eles podem ser testados e adicionados separadamente em um programa, de modo que é possível construir programas incrementalmente
- O ato de inserir de códigos no _listener_ Prolog é denonimado **consultar**
- É possível consultar diretamente um arquivo fonte no _listener_ Prolog por meio da subrotina `consult()`:
```
consult(source)
```
- Se o arquivo for modificado, ele deve ser recarregado com a rotina `reconsult(source)`
- A extensão deve ser `*.pl` (o Vim pode identificar estes arquivos como arquivos Perl)
- Usando o comando
```
prolog -s source.pdb
```
as afirmações são carregadas do arquivo e o terminal fica pronto para consultas
- Para fazer uma consulta sem entrar no modo iterativo, use a opção `-g` para estabelecer o objetivo e a opção `-t` para encerrar o Prolog:
```
$ prolog -s source.pl -g "goal(X),print(X),nl,fail." -t halt
```
- A proposição _Todas as pessoas são mortais_ ou _Para todo X, X é mortal se X é um pessoa_ é escrita em Prolog como
```
    mortal(X) :- person(X) .
```
- A proposição _Sócrates é uma pessoa_ é escrita como
```
    person(socrates) .
```
- Estas duas proposições permitem que Prolog demonstre se Sócrates é ou não mortal, por meio da consulta
```
    mortal(socrates) .
```
- A consulta
```
    mortal(X) .
```
retorna todos os valores de `X` tal que a proposição é verdadeira (neste caso, `X = socrates`)
- O jargão de Prolog é composto por termos de programação, termos de bancos de dados e termos lógicos
- Não há uma divisão clara, em Prolog, entre dados e procedimentos
- Um programa em Prolog é um banco de dados Prolog
- Sinômios para um termo são introduzidos entre parêntesis
- Por exemplo, no nível mais alto temos `program(database)` 
- Um programa é composto por predicados (procedimentos, registros, relações)
- Cada predicado é definido um nome e um número (**arity**)
- **arity** é o número de argumentos (atributos, campos) do predicado
- Dois predicados com nomes diferentes, mais **arities** distintas, são considerados distintos
- No código são três predicados: `person/1, mortal_report/0, mortal/1`
- `person/1` remete a um registro com um campo
- `mortal_report/0` parece uma subrotina sem argumentos
- `mortal/1` remete a uma regra ou proposição que está em algum lugar entre dados e procedimentso
- Cada predicado do programa é definido pela existência de uma ou mais **cláusulas** no banco de dados
- No programa, `person/1` tem 4 cláusulas, os demais predicatos apenas uma cláusula
- Cada cláusula pode ser uma **regra** ou um **fato**
- As 4 cláusulas de `person/1` são fatos
- As demais são regras

== Fatos

- Os fatos são os predicados mais simples do Prolog
- Se assemelham a registros em um banco de dados relacional
- A sintaxe para a declaração de um fato é
```
    pred(arg1, arg2, ..., argN) .
```
onde `pred` é o nome do fato, e `arg1, arg2, ..., argN` são os argumento, sendo `N` a **arity** - O ponto final (`.`) encerra todas as cláusulas de Prolog
- Se a aridade do predicado for zero, a sintaxe se reduz a
```
    pred .
```
- Os argumentos podem ser quaisquer termos válidos de Prolog
- Os termos básicos são
    * inteiro: número positivo, negativo ou zero, com valor absoluto máximo dependendo da implementação
    * átomo: uma constante de texto iniciada com letra minúscula
    * variável: começa com letra maiúscula ou underscore
    * estrutura: termos complexos
- Algumas implementações podem estender esta lista, com strings e ponto flutuante, por exemplo
- O uso de aspas simples permitem a construção de átomos pode meio de qualquer combinação válida de caracteres
- Os nomes dos predicados seguem as mesmas regras dos átomos
- Os fatos são frequentemente utilizados para inserir informações no programa
- Por exemplo, para o predicato `paciente/3` podem ser atestados os seguintes fatos:
```
    paciente('Maria Rita', 35, sus)
    paciente('Pedro Silva', 70, amil)
```
- As aspas foram usadas nos nomes porque começam em maiúsculas e porque tem espaços
- Um _listener_ Prolog deve fornecer meios de inserção de fatos e regras em uma base de dados dinâmica, a qual pode ser consultada (**query**, **call**)
- A base de dados é atualizada por meio de consultas (`consult()` ou `reconsult()`)
- Os predicados podem ser inseridos diretamente no _listener_, mas não são gravados entre as sessões
- Os nomes utilizados no fato são indiferentes para o Prolog, mas para a aplicação as relações devem ser compatíveis com a semântica dos identificadores escolhidos
- Prolog considera distintos os fatos `fato(a, b)` e `fato(b, a)`

### Simple Queries

- Uma vez que o programa alimente a base de dados com fatos, o programa pode ser consultado no _listener_ e responder a consultas (_queries_) a respeito dos fatos
- As consultas em Prolog funcionam por meio do casamento de padrões (_pattern matching_)
- O padrão de uma consulta é denominado **objetivo** (_goal_)
- Se algum fato atinge o objetivo, a consulta é bem sucedida e o _listener_ responde "Sim" (_true_)
- Caso contrário, a consulta falha e o _listener_ responde "Não" (_false_)
- O casamento de padrões do Prolog é denominado **unificação**
- Se o programa contém apenas fatos, a unificação é bem sucedida se as 3 condições são satisfeitas:
    1. O predicado citado no objetivo e na base de dados é o mesmo
    2. Ambos tem a mesma aridade
    3. Todos os argumentos são os mesmos
- Exemplos de queries:
```
door(office, hall) .
door(hall, office) .
```
- Objetivos podem ser generalizados por meio de variáveis do Prolog
- Estas variáveis não se comportam como variáveis em outras linguagens, e são denominadas variáveis lógicas
- Elas substituem um ou mais argumentos no objetivo
- O nome e a aridade do predicado devem permanecer o mesmo, porém o argumento substituído pela variável casará positivamente com qualquer termo
- Após uma unificação bem sucedida, a variável terá como valor os termos os quais casaram com ele
- Este processo ata (_binding_) os valores à variável
- Estes valores serão o retorno da consulta pelo _listener_
- Um valor será retornado: caso mais de um valor seja casado com a variável, Prolog fornece mecanismos para a extração de todos os demais
- Após uma resposta você pode inserir um ponto-e-vírgula (';'): isto faz com que Prolog procure por _bindings_ alternativos para as variáveis
- Qualquer outra entrada encerra a consulta
- Se não houveram mais alternativas, o retorno será "Não" (não acontece na versão GNU)
- Variáveis devem iniciar em maiúsculas
- Todos os argumentos podem ser substituídos por variáveis
- Exemplos:
```
room(X) .
location(Thing, kitchen) .
location(Thing, Place) .
```
- Quando Prolog tenta satisfazer um objetivo a respeito de um predicado, ele percorre todas as cláusulas que definem o predicado
- Uma vez que há um casamento (argumentos e/ou variáveis), a cláusula em questão é marcada indicando que ela satisfez o objetivo e retorna
- Se o usuário solicitar mais respostas, ele retoma a busca entre as cláusulas a partir do ponto em que ele parou
- Neste resume o _binding_ da variável é desfeito e a busca é retomada
- Este processo é denominado **backtracking**
- O controle de fluxo da avaliação de um objetivo tem 4 portas: chamada (_call_), saída (_exit_), retomada (_redo_) e falha (_fail_)
- Inicialmente a roina de avaliação é chamada
- Se bem sucedida, ela saí (encerra, _exit_), atando as variáveis com os resultados obtidos
- Caso contrário, ela falha: não há mais valores que possam satisfazer o objetivo
- Se bem sucedida e é seguida de um ';', ela retoma (_redo_) a execução do ponto que parou 
- As variáveis são desatadas de seus valores e se busca por novas valores que também satisfaçam o objetivo
- Para acompanhar este processo, use o comando trace
```
?- trace .
```
- Para finalizar o trace, use o predicado `notrace/0` (se preciso, use também `nodebug/0`
- Para fazer uma afirmação geral, como "todos dormem", a sintaxe é
```
?- assert(sleeps(X)) .
```
- `assert/1` permite definir fatos diretamente no interpretador
- A consulta `pred(X, X)` procura por valores iguais em ambos argumentos

## Consultas compostas

- Consultas simples podem ser combinadas em consultas compostas por meio do operador ',', que corresponde ao 'and' lógico
- Exemplo:
```
?- location(X, kitchen), edible(X).
```
- Se a mesma variável aparece em mais de um predicado da consulta composta, ela deve ter o mesmo valor em todos eles para que exista um casamento de padrão para a consulta
- O escopo de uma variável lógica é uma consulta
- Se a mesma variável é utilizada em consultas distintas, cada consulta tem sua própria cópia da variável
- O processo de _backtracking_ é utilizado para tentar casar todos os padrões, da esquerda para a direita
- Ele encerra (sai) com sucesso apenas se ele sai do predicado mais à direita com sucesso
- No caso _redo_, apenas as variáveis presentes no predicado mais à direita são desatadas (as variáveis associadas aos predicados anteriores permanecem atadas)
- Se a consulta falha para um dos predicados, ela falha como um todo
- Exemplo: todas as coisas localizadas em salas adjacentes à cozinha:
```
?- door(kitchen, R), location(T, R).
```
## Built-in predicates

- Built-in (evaluable) predicates são pré-definidos em Prolog
- Não há cláusulas para tais predicados
- Quando um objetivo casa com um built-in predicate, ele chamda uma rotina pré-definida
- Estas rotinas, em geral, são implementadas na mesma linguagem que implementou o listener
- Elas realizam tarefas que estão fora do contexto da prova de teoremas lógicos, como escrever no console
- Por esta razão, também são denominados predicados extra-lógicos (PEL)
- Ele respondem tanto na chamada (_left_) quando no _redo_ (_right_)
- A resposta no caso _redo_ é denominada comportamento no _backtracking_
- PEL de I/O:
    1. `write/1`: sempre casa com qualquer padrão, e tem como efeito colateral escrever seu argumento no console. Sempre falha no _backtracking_
    2. `nl/0`: sempre é bem sucedido, e inicia uma nova linha. Também falha no _backtracking_
    3. `tab/1`: avança n espaços, onde n é seu argumento. Mesmo comportamento dos anteriores
- Eles não afetam o fluxo de controle, transferindo-o controle adiante (_left_) ou para trás (_backtracking_)
- Também não alteram as variáveis
- O PEL `fail/0` sempre falha
- Se ele recebe o controle vindo da esquerda, ele passa o controle imediatamente para a porta _redo_ do objetivo da esquerda
- Ele nunca recebe o controle da direita, pois nunca deixa o fluxo avançar para lá
- Obs: **Inserir figuras de controle de fluxo (Cap. 4, pág 40 approx.)**
- Exemplo: imprimir todas as soluções, sem precisar do ';':
```
?- location(X, kitchen), write(X), nl, fail.
```

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
