% Exemplo de declaração de regras em Prolog

% Fatos sobre estudantes da FCTE, do campus Darcy Ribeiro e do IFB
fcte(ana).
fcte(beto).
fcte(carlos).

darcy(diana).
darcy(esther).

ifb(fernando).

% Predicado que identifica alunos da UnB
unb(X):- (fcte(X) ; darcy(X)).

% Implementação alternativa, em duas regras
unb2(X) :- fcte(X).
unb2(X) :- darcy(X).
