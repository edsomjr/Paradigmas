% Exemplo de arquivo-fonte Prolog
unb(X) :- fga(X).

fga(ana).
fga(beto).
fga(carlos).

unb_report :-
    write('Estudantes da UnB: '), nl,
    unb(henrique),
    write('Ok'), nl,
    fail.
unb_report :- write('Nenhum estudante encontrado'), fail.
