    (sum [1..10] > 50) || (length [1..] > 1000)
    (sum ([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) > 50) || (length [1..] > 1000)
    (55 > 50) || (length [1..] > 1000)
    True || (length [1..] > 1000)
    True || (length [1, 2, 3, ...] > 1000)      -- Laço infinito
