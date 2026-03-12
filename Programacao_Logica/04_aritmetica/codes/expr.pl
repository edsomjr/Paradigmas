% Exemplos de regras que utilizam expressões aritméticas. A convenção é que
% o valor de retorno seja o último parâmetro.

% Determine o número de linha de uma tabela-verdade de uma proposição composta
% de N proposições simples
number_of_lines(N, Res) :- Res is 2^N.

juros_simples(M, J, T, Res) :-
    Res is M * (1 + J * T).

juros_compostos(M, J, T, Res) :-
    Res is M * (1 + J) ** T.

% Exemplos de consultas
?- number_of_lines(3, N).
N = 8.

?- juros_simples(100, 0.12, 24, Res).
Res = 388.0.
