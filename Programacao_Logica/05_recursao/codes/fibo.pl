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

% Exemplo de consulta. SWI-Prolog implementa aritmética estendida
?- X is fib(200).
X = 280571172992510140037611932413038677189525.
