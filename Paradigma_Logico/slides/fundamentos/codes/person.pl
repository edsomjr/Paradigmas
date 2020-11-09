% Este arquivo deve ser carregado no interpretador Prolog
% por meio da subrotina consult():
%
% ?- consult(codes/person)
mortal(X) :- person(X) .

person(socrates) .
person(plato) .
person(zeno) .
person(aristotle) .

mortal_report :- 
    write('Known mortals are:'), nl,
    mortal(X),
    write(X), nl,
    fail .
