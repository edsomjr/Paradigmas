% Determina todos os subconjuntos de um conjunto de N elementos
% length/2 retorna verdadeiro se N é o tamanho da lista S
% between(A, B, C) retorna verdadeiro se C pertence ao intervalo [A, B]
subset(N, S) :- 
    length(S, N),
    maplist(between(0, 1), S).

% Gera uma lista de tamanho N, com todos os elementos iguais a Value
replicate(N, Value, L) :-
    length(L, N),
    maplist(=(Value), L).


% Gera o histograma dos inteiros contidos na lista Ns
% msort/2 ordena os elementos do primeiro parâmetro, sem remover duplicatas
% clumped/2 gera o RLE (run-length encoding) do primeiro parâmetro
histogram(Ns, H) :-
    msort(Ns, Sorted),
    clumped(Sorted, H).
