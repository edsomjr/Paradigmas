male(homer).
male(bart).
female(marge).
female(lisa).
female(maggie).
father(homer, bart).
father(homer, lisa).
father(homer, maggie).
mother(marge, bart).
mother(marge, lisa).
mother(marge, maggie).
siblings(X, Y) :- X \= Y, father(F, X), father(F, Y).
brothers(X, Y) :- male(X), siblings(X, Y).
sisters(X, Y) :- female(X), siblings(X, Y).

% ?- sisters(X, bart).
% ?- siblings(X, maggie).  -- Explique o resultado desta consulta!
