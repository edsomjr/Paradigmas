Object subclass: Polygon [
    | sides |
    <comment: 'Exemplo de classe em SmallTalk'>

    Polygon class >> new: n [
        | r |
        r := super new . r init: n . ^r
    ]

    init: n [ sides := n ]

    sides [ ^sides ]

    printOn: stream [
        super printOn: stream .
        stream nextPutAll: ' with ' .
        sides printOn: stream .
        stream nextPutAll: ' sides'
    ]
]
