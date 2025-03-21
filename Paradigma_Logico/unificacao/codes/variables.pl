    ?- X = a.
    X = a.

    ?- 2 = Y.
    Y = 2.

    ?- f(x, y) = f(X, y).
    X = x.

    ?- f(x, y) = f(X, z).
    false.

    ?- f(x, y) = f(X, Y).
    X = x.
    Y = y.
