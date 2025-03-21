% Calcula as raizes reais do polinômio p(x) = ax^2 + bx + c
root_signal(S, Delta) :-
    Delta >= 0,
    S is 1.
root_signal(S, Delta) :-
    Delta > 0,
    S is -1.

roots(X, A, B, C) :-
    A \= 0,
    Delta is B ** 2 - 4*A*C,
    root_signal(S, Delta),
    X is (-B + S*sqrt(Delta))/(2*A).

% ?- roots(X, 1, -5, 6).
% ?- roots(X, 1, 0, 1).
% ?- roots(X, 0, 2, 4).
