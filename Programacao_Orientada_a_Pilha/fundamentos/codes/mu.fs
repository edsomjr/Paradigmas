\ Computa a posição final se o corpo, que estava inicialmente no km s0,
\ se desloca a v km/h durante t horas
: S ( s0 v t -- s )   * + ;

20 80 1 S . CR          \ 100
-14 125 3 S . CR        \ 361
BYE
