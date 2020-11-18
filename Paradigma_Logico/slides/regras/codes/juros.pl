juros_simples(X, P, J, T) :-
    X is P * (1 + J * T).

juros_compostos(X, P, J, T) :-
    X is P * (1 + J) ** T.

% ?- juros_simples(X, 100, 0.12, 24).
% ?- juros_compostos(X, 100, 0.12, 24).
