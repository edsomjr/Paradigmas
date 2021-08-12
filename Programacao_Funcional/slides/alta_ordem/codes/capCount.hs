    ghci> :module Data.Char
    ghci> capCount = length . filter (isUpper . head) . words

    ghci> capCount "Paradigmas de Programação"      -- 2
