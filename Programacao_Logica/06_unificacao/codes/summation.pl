% Computa a soma de todos os inteiros no intervalo [A, B]
% O predicado sum(A, B, C) é verdadeiro se C = A + B
summation(A, B, Sum) :-
    numlist(A, B, L),
    foldl(plus, L, 0, Sum).

% Computa a soma dos prefixos da lista de inteiros L
% O valor inicial será o primeiro elemento da lista resultante
prefix_sum(L, Psum) :-
    scanl(plus, L, 0, Psum).

% Verdeiro se C = A * B
multiply(A, B, C) :- C is A * B.

% Computa o N-ésimo fatorial
factorial(N, Fact) :- 
    numlist(1, N, L),
    foldl(multiply, L, 1, Fact).
