% Determina se X é ou não ímpar
is_odd(X) :- X mod 2 =\= 0.

% Determina os números ímpares presente na lista L
odds(L, Odds) :- include(is_odd, L, Odds).

% Determina os números pares presente na lista L
evens(L, Evens) :- exclude(is_odd, L, Evens).

% Exemplo de consulta
% O predicado numlist/3 gera uma lista com todos os inteiros no intervalo dado
?- numlist(1, 5, L), odds(L, Odds), evens(L, Evens).
L = [1, 2, 3, 4, 5],
Odds = [1, 3, 5],
Evens = [2, 4].
