% Mesma variável lógica em ambos argumentos
f(1, 1).
f(1, 2).
f(1, 3).

f(2, 1).
f(2, 2).
f(2, 3).

g(a, 1).
g(1, a).

% Exemplos de consultas
%
% ?- f(X, X).
% X = 1 ;
% X = 2 ;
% false.
%
% ?- g(X, X).
% false.
