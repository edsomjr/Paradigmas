% Exemplo de sessão interativa Prolog
% O interpretador é iniciado com o comando
% 
%     $ prolog
%

?- consult('codes/conectivos.pl').
true.

?- and(true, false).
false.

?- or(false, true).
true.

?- not(true).
false.
