    backtracking_assert(X):-
        asserta(X).
    backtracking_assert(X):-
        retract(X), fail.
