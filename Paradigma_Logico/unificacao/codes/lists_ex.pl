    ?- asserta(f([a, b, c], d)).
    true.

    ?- f(X, d).
    X = [a, b, c].

    ?- [_, X, _] = [1, 2, 3].
    X = 2.
