    -- Dobra o valor de todos os elementos da lista
    ghci> doubles = map (2*)

    ghci> doubles [1..5]            -- [2, 4, 6, 8, 10]

    ghci> squares = map (^2)
    
    ghci> squares [1..5]            -- [1, 4, 9, 16, 25]

    ghci> hasx = ('x' `elem`)
    ghci> hasX = ('X' `elem`)
    ghci> anyx xs = hasx xs || hasX xs
