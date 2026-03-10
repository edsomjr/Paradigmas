% Fatos a serem declarados em um arquivo '.pl'
algoritmo(grafos, kruskall).
algoritmo(grafos, bellman-ford).

algoritmo(strings, kmp).
algoritmo(strings, z-function).
algoritmo(strings, lcs).

algoritmo(gulosos, kruskall).

% Exemplos de consultas (unificação simples + variáveis)
?- algoritmo(strings, X).
X = kmp ;
X = z-function ;
X = lcs.

?- algoritmo(Area, kruskall).
Area = grafos ;
Area = gulosos.
