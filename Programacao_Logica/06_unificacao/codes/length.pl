% Uma implementação possível para o predicado length/2, que computa 
% número de elementos em uma lista
length_([_|T], X) :- length_(T, NewX), X is NewX + 1.
length_([], 0).
