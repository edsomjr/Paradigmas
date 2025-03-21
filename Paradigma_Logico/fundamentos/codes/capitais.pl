cidade('Brasília', df).
cidade('Gama', df).
cidade('Cuiabá', mt).
cidade('Barra dos Bugres', mt).
cidade('Tangará da Serra', mt).
cidade('Belo Horizonte', mg).
cidade('Governador Valadares', mg).
capital('Brasília').
capital('Cuiabá').
capital('Belo Horizonte').
regiao(centro_oeste, df).
regiao(centro_oeste, mt).
regiao(sudeste, mg).

% Exemplos de consultas:
% ?- cidade(X, mt), capital(X).
% ?- cidade(X, Y), regiao(centro_oeste, Y), capital(X).
