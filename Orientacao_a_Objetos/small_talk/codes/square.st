Polygon subclass: Square [
    | l |
    <comment: 'Exemplo de subclasse em SmallTalk'>

    Square class >> sideLen: length [
        | r |
        r := super new: 4 . r setLength: length . ^r
    ]

    setLength: length [ l := length ]

    area [ ^(l * l) ]
    perimeter [ ^(self getSides * l) ]

    printOn: stream [
        stream nextPutAll: 'a Square with side ' .
        l printOn: stream 
    ]
]
