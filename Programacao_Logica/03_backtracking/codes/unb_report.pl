fcte(ana).
fcte(beto).
fcte(carlos).
darcy(diana).
darcy(esther).
ifb(fernando).

unb(X):- (fcte(X) ; darcy(X)).

% Exemplo de predicado cujo corpo contém predicados extra-lógicos
unb_report :-
    write('Estudantes da UnB: '), nl,
    unb(X),
    tab(2), write(X), nl,
    fail.

% Esta cláusula evita que o resultado de unb_report/0 seja falso
unb_report.
