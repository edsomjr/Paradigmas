% Equivalência entre graus Celsius e Fahrenheit
celsius_fahrenheit(C, F) :-
    ((var(C), var(F)) 
        -> instantiation_error('Ao menos uma variável deve estar atada')),
    (nonvar(C) -> F is C*9/5 + 32 ; C is (F - 32)*5/9).

% Exemplos de consultas
?- celsius_fahrenheit(40, F).
F = 104.

?- celsius_fahrenheit(C, 104).
C = 40.

?- celsius_fahrenheit(100, 100).
false.

?- celsius_fahrenheit(32, F).
F = 89.6.
