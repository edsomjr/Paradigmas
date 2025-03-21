    ?- f(A, B) = C, write(C), nl, A = a, B = 8, write(C).
    f(_6142,_6144)
    f(a,8)
    A = a,
    B = 8,
    C = f(a, 8).

    ?- f(b, X) = f(b, c(Y, d)), X = teste.
    false.

    ?- f(X) = f(x, y).
    false.

    ?- f(x, y, z) = f(X, X, z).
    false.
