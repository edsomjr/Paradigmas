\ Conversões para segundos
: HOURS    ( n -- n ) 3600 * ;
: MINUTES  ( n -- n ) 60 * ;
: SECONDS  ( n -- n ) ;

\ Versões no singular
: HOUR     HOURS ;
: MINUTE   MINUTES ;
: SECOND   SECONDS ;

\ Imprime o tempo correspondente a n segundos
: TIME ( n -- ) 
    3600 /MOD . ." hour(s), "
    60 /MOD . ." minute(s), "
    . ." second(s)" ;

1 HOUR 30 MINUTES + 5000 SECONDS +
TIME CR         \ 2 hour(s), 53 minute(s), 20 second(s)
BYE
