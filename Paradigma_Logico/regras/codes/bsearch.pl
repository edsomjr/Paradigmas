has_roots_in(F, A, B) :-
    call(F, Y1, A),
    call(F, Y2, B),
    Y1 * Y2 < 0.
 
roots(X, F, A, _, EPS) :-
    call(F, Y, A),
    abs(Y) < EPS,
    X is A.

roots(X, F, _, B, EPS) :-
    call(F, Y, B),
    abs(Y) < EPS,
    X is B.

roots(X, F, A, B, EPS) :-
    M is (A + B)/2,
    call(F, Y, M),
    abs(Y) < EPS,
    X is M.

roots(X, F, A, B, EPS) :-
    abs(B - A) > EPS,
    M is (A + B)/2,
    roots(X, F, A, M, EPS).

roots(X, F, A, B, EPS) :-
    abs(B - A) > EPS,
    M is (A + B)/2,
    roots(X, F, M, B, EPS).

f(Y, X) :- Y is X ** 2 - 5 * X + 6.
