% Homens e mulheres
male(abraham). male(clancy). male(herb). male(homer). male(bart).
female(mona). female(jackie). female(marge). female(patty).
female(selma). female(lisa). female(maggie). female(ling).

% Pai
father(herb, abraham).
father(homer, abraham).
father(marge, clancy).
father(patty, clancy).
father(selma, clancy).
father(bart, homer).
father(lisa, homer).
father(maggie, homer).

% Mãe
mother(herb, mona).
mother(homer, mona).
mother(marge, jackie).
mother(patty, jackie).
mother(selma, jackie).
mother(bart, marge).
mother(lisa, marge).
mother(maggie, marge).
mother(ling, selma).

% Auxiliares
parent(P, X) :- father(P, X).
parent(P, X) :- mother(P, X).

sibling(A, B) :-
    father(A, F), father(B, F),
    mother(A, M), mother(B, M),
    A \= B.

% Tio: homem que é irmão de um dos pais
uncle(U, X) :-
    male(U),
    parent(P, X),
    sibling(U, P).

% Avó: mãe de um dos pais
grandmother(G, X) :-
    mother(G, P),
    parent(P, X).
