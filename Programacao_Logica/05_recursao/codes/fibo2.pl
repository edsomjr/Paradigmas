% Computa o n-ésimo número de Fibonacci
fibTR(N, B, A, F) :-
    N > 0,
    succ(NewN, N),
    C is A + B,
    fibTR(NewN, C, B, F).

fibTR(0, _, Acc, Acc).

:- use_module(library(arithmetic)).
:- arithmetic_function(fib/1).

fib(N, F) :- fibTR(N, 1, 0, F).

% Computa o bilionésimo número de Fibonacci em Prolog
% Tempo de execução: 6,491s
?- profile(X is fib(1000000)).
