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

% Determina se X é uma matrioska ou não
doll(X) :- matrioska(X, _).
doll(X) :- matrioska(_, X).

% Lista todas as matrioskas distintas
dolls(D) :-
    findall(X, doll(X), L),
    distinct(member(D, L)).

% Lista todas as matrioskas
list_all :-
    dolls(D),
    list(D, 0).
list_all.

% Lista todas as matrioskas contidas em M a partir do nível L
list(M, L) :-
    nl,
    tab(L),
    print(->),
    tab(1),
    print(M),
    matrioska(M, X),
    NewL is L + 4,
    list(X, NewL).
