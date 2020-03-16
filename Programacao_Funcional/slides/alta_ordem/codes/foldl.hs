    foldl :: (a -> b -> a) -> a -> [b] -> a
    foldl step zero (x:xs) = foldl step (step zero x) xs
    foldl _    zero []     = zero
