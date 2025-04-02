% Exemplos de operadores e associatividade em Prolog
:- op(100, 'xfx', f).
:- op(100, 'xfy', g).
:- op(100, 'yfx', h).

%% Exemplos de consultas
%
% ?- a f b f c = f(a, f(b, c)).
% ERROR: Syntax error: Operator expected
% ERROR: a f b f c = f(a, f(b, c)
% ERROR: ** here **
% ERROR:  . 
%
% ?- a g b g c = g(a, g(b, c)).
% true.
%
% ?- a h b h c = h(h(a, b), c).
% true.
