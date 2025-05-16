    map :: (a -> b) -> [a] -> [b]
    map f xs = foldr step [] xs
        where step x ys = f x : ys
