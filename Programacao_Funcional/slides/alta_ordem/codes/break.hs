    ghci> :type break
    break :: (a -> Bool) -> [a] -> ([a], [a])
    
    ghci> break even [1, 1, 2, 3, 5, 8]
    ([1, 1], [2, 3, 5, 8])
