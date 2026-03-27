% Exemplo de declaração de fatos a partir de uma lista.
?- list_to_facts([f(1), f(1, 2), g(3)]).
true.

?- f(1).
true.

?- f(1, 2).
true.

?- g(1).
false.

?- g(3).
true.

% A lista resultante contém os valores da variável do primeiro parâmetro
% que satisfizeram o objetivo do segundo parâmetro
?- findall(X, f(X) ; g(X), L).
L = [1, 3].
