% Carrega a biblioteca de aritmética
:- use_module(library(arithmetic)).

% Declara os predicados como funções aritmética. Note que a aridade declarada
% é uma unidade menor do que a aridade usada na definição do predicado, e que a
% última variável conterá o valor de 'retorno'
:- arithmetic_function(number_of_lines/1).
:- arithmetic_function(juros_simples/3).

number_of_lines(N, Res) :- Res is 2^N.

juros_simples(M, J, T, Res) :-
    Res is M * (1 + J * T).

% Agora é possível usar os predicados em conjunto com o operador is/2
?- X is 1 + number_of_lines(4).
X = 17.

?- X is juros_simples(1000, 0.05, 60).
X = 4000.0.
