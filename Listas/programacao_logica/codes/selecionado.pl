selecionado(X) :- campeao(X).
selecionado(X) :- time(X, _, 'mg'), \+ campeao(X).