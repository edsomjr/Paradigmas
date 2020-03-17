is_prime n  | n < 2         = False
            | n == 2        = True
            | mod n 2 == 0  = False  
            | otherwise     = test n 3
            where test n d | d * d > n      = True
                           | mod n d == 0   = False
                           | otherwise      = test n (d + 2)

main = do
    n <- readLn :: IO Int
    putStrLn $ show n ++ " eh primo? " ++ show (is_prime n)
