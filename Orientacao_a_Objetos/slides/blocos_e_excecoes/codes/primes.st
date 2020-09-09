Object subclass: Primes [
    Primes class >> upTo: n [
        | sieve ps |
        sieve := Array new: n .
        1 to: n do: [ :i | sieve at: i put: 1 ] .
        ps := OrderedCollection new .
        ps addLast: 2 .
        3 to: n by: 2 do: [ :i | 
            ((sieve at: i) == 1) ifTrue: [
                ps addLast: i .
                (i*i) to: n by: (2*i) do: [ :j | sieve at: j put: 0 ] 
            ] 
        ] .
        ^ps
    ]
]

(Primes upTo: 30) printNl .
(Primes upTo: 50) do: [ :p | p print . Transcript space ] .
Transcript cr
