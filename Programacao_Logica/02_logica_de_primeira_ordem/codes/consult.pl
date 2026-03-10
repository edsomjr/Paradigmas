% Resultados de consultas simples para as cláusulas sobre estudantes
?- unb(fernando).
false.

?- unb(diana).
true.

% X é uma variável lógica (inicia em maiúscula)
?- ifb(X).
X = fernando.

% Observe o uso de ponto-e-vírgula para as demais atribuições
?- unb(X).
X = ana ;
X = beto ;
X = carlos ;
X = diana ;
X = esther.
