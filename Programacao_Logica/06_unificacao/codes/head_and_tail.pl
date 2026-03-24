?- [H|T] = [1, 2, 3, 4, 5], [A | B] = [6].
H = 1,
T = [2, 3, 4, 5],
A = 6,
B = [].
?- [H|T] = [].
false.

% É possível listar vários elementos antes da barra, separados por
% vírgulas, mas após a barra pode haver uma única variável
?- [A, B | T] = [1, 2, 3, 4, 5].
A = 1,
B = 2,
T = [3, 4, 5].
