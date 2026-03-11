% Define a conjunção e a disjunção
and(true, true).
or(true, true).
or(true, false).
or(false, true).

% Define o conjunto dos valores boolenaos
bool(true).
bool(false).

% O predicado call/N executa a consulta armazenada em seu primeiro argumento. Ele
% deve se declarado como um meta predicado, para que possa interpretar seu 
% primeiro argumento como um objetivo. O número 2 indica o número de parâmetros
% a serem passados para call/N, além do objetivo em si
:- meta_predicate execute_goal(2).

execute_goal(Op, X, Y) :-
    (call(Op, X, Y) -> writeln(true) ; writeln(false)).

% Gera a tabela verdade de um conectivo lógico binário
truth_table(Op, Symbol) :-
    bool(X), bool(Y),
    write(X), write(' '), write(Symbol), write(' '), write(Y), write(' = '),
    execute_goal(Op, X, Y), fail.
truth_table(_, _).

% Exemplos de chamada
?- truth_table(and, '&').
true & true = true
true & false = false
false & true = false
false & false = false
true.

?- truth_table(or, '|').
true | true = true
true | false = true
false | true = true
false | false = false
true.
