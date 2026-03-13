:- use_module(library(arithmetic)).
:- arithmetic_function(root_signal/1).

root_signal(Delta, S) :-
    Delta >= 0,
    S is 1.

root_signal(Delta, S) :-
    Delta > 0,
    S is -1.

% Calcula as raizes reais do polinômio p(x) = ax^2 + bx + c
roots(A, B, C, X) :-
    A =\= 0,
    Delta is B^2 - 4*A*C,
    S is root_signal(Delta),
    X is (-B + S*sqrt(Delta))/(2*A).

% ?- roots(X, 1, -5, 6).
% ?- roots(X, 1, 0, 1).
