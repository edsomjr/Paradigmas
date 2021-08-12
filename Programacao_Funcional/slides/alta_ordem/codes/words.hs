    ghci> :type words
    words :: String -> [String]

    ghci> words "A B\tC\nD\rE"      --  ["A","B","C","D","E"]
