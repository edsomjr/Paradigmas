easy(1).
easy(2).
easy(3).

gizmo(a, 1).
gizmo(b, 3).
gizmo(a, 2).
gizmo(d, 5).
gizmo(c, 3).
gizmo(a, 3).
gizmo(c, 4).

harder(a, 1).
harder(c, _).
harder(b, 4).
harder(d, 2).

a(a1, 1).
a(A, 2).
a(a3, N).

b(1, b1).
b(2, B).
b(N, b3).

c(X, Y) :- a(X, N), b(N, Y).

d(X, Y) :- a(X, N), b(Y, N).
d(X, Y) :- a(N, X), b(N, Y).
