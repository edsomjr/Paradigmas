male('Edson Júnior') .
male('Luis Antônio') .
male('Edson Alves').
male('Fulano de Tal').
male('Sicrano').

female('Regiane Gomes') .
female('Ana Rosa') .
female('Maria Talva').
female('Patrícia Talva').
female('Camila Talva').

parent('Edson Alves', 'Fulano de Tal').
parent('Edson Alves', 'Camila Talva').
parent('Edson Alves', 'Edson Júnior').
parent('Edson Alves', 'Patrícia Talva').

parent('Maria Talva', 'Sicrano').
parent('Maria Talva', 'Edson Júnior').
parent('Maria Talva', 'Camila Talva').
parent('Maria Talva', 'Patrícia Talva').

parent('Edson Júnior', 'Luís Antônio') .
parent('Edson Júnior', 'Ana Rosa') .

parent('Regiane Gomes', 'Luís Antônio') .
parent('Regiane Gomes', 'Ana Rosa') .

mother(M, C) :-
    parent(M, C),
    female(M).

father(F, C) :-
    parent(F, C),
    male(F).

grandfather(G, C) :-
    parent(P, C),
    parent(G, P),
    male(G).

grandmother(G, C) :-
    parent(P, C),
    parent(G, P),
    male(G).

children(X, P) :- parent(P, X).

siblings(X, P) :-
    father(F, P),
    father(F, X) ;
    mother(M, P),
    mother(M, X),
    P \= X.

sisters(X, P) :-
    siblings(X, P),
    female(X).

brothers(X, P) :-
    siblings(X, P),
    male(X).

aunts(A, C) :-
    father(F, C),
    siblings(A, F),
    female(A).

uncles(U, C) :-
    father(F, C),
    siblings(U, F),
    male(U).

spouse('Edson Júnior', 'Regiane Gomes').
spouse('Maria Talva', 'Edson Alves').

married(X, Y) :- spouse(X, Y).
married(X, Y) :- spouse(Y, X).
