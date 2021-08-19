triangle(equilateral).
triangle(isosceles).
triangle(scalene).

quadrilateral(square).
quadrilateral(rectangle).
quadrilateral(rhombus).
quadrilateral(trapezoid).

equal_sides(equilateral).
equal_sides(square).
equal_sides(rhombus).
right_angles(square).
right_angles(rectangle).

% Exemplo de query que imprime todos os resultados possíveis sem interação
% ?- quadrilateral(X), equal_sides(X), write(X), nl, fail.
