% Cada matrioska pode conter outras de tamanho menor
matrioska(a, b).
matrioska(a, c).

matrioska(b, d).
matrioska(b, c).
matrioska(b, f).

matrioska(c, e).
matrioska(c, g).

matrioska(d, g).

matrioska(e, f).

matrioska(f, g).
matrioska(f, h).

% Lista todas as matrioskas contidas em M
list_all(M) :-
    list(M, 0).
list_all(_).

list(M, L) :-
    nl,
    tab(L),
    print(->),
    tab(1),
    print(M),
    matrioska(M, X),
    NewL is L + 4,
    list(X, NewL).
