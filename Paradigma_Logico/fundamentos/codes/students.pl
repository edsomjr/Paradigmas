% Exemplo de arquivo-fonte Prolog
unb(X) :- fcte(X).

fcte(ana).
fcte(beto).
fcte(carlos).

unb_report :-
    write('Estudantes da UnB: '), nl,
    unb(X),
    write(X), nl,
    fail.
