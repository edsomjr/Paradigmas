Object subclass: Account [
    | balance |
    <comment: 'I represent a place to deposit and withdraw money'>
    Account class >> new [
        <category: 'instance creation'>
        | r |
        r := super new.
        r init.
        ^r
    ]
    init [
        <category: 'initialization'>
        balance := 0
    ]

    printOn: stream [
        <category: 'printing'>
        super printOn: stream.
        stream nextPutAll: ' with balance: '.
        balance printOn: stream
    ]

    spend: amount [
        <category: 'moving money'>
        balance := balance - amount
    ]

    deposit: amount [
        <category: 'moving money'>
        balance := balance + amount
    ]
]
