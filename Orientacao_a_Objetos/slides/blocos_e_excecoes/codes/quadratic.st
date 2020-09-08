Object subclass: QuadraticPolynomial [
    | a b c |

    QuadraticPolynomial class >> coefA: av coefB: bv coefC: cv [
        | r |
        r := super new . r setA: av . r setB: bv . r setC: cv . ^r
    ]

    setA: av [
        (a == 0) ifTrue: [ ^self error: 'a must be non-zero' ] .
        a := av
    ]

    setB: bv [ b := bv ]
    setC: cv [ c := cv ]

    printOn: stream [
        (a < 0) ifTrue: [ stream nextPutAll: '- ' ] .
        (a abs ~= 1) ifTrue: [ (a abs) printOn: stream ] .
        stream nextPutAll: 'x^2 ' .
        (b ~= 0) ifTrue: [
            (b < 0) ifTrue: [ stream nextPutAll: '- ' ];
                    ifFalse: [ stream nextPutAll: '+ ' ] .
            (b abs ~= 1) ifTrue: [ (b abs) printOn: stream ] .
            stream nextPutAll: 'x ' 
        ] .
        (c ~= 0) ifTrue: [
            (c < 0) ifTrue: [ stream nextPutAll: '- ' ];
                    ifFalse: [ stream nextPutAll: '+ ' ] .
            (c abs) printOn: stream
        ]
    ]
]

p := QuadraticPolynomial coefA: 1 coefB: -5 coefC: 6 .
p printNl .
q := QuadraticPolynomial coefA: -2 coefB: 0 coefC: -1 .
q printNl
