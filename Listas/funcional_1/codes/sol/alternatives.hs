-- 1.a second
second_alt1 :: [a] -> Maybe a
second_alt1 xs
    | length xs < 2 = Nothing
    | otherwise     = Just $ head $ tail xs

-- 1.b body
body_alt1 :: [a] -> Maybe [a]
body_alt1 xs
    | length xs < 2 = Nothing
    | otherwise     = Just $ take (length xs - 2) $ tail xs

-- 1.c median
median_alt1 :: [a] -> Maybe a
median_alt1 xs
    | null xs   = Nothing
    | otherwise = Just $ head $ drop (div (length xs - 1) 2) xs

-- 2.a parity
parity_alt1 :: Int -> Int
parity_alt1 n
    | n == 0    = 0
    | otherwise = 1 - parity_alt1 (n - 1)

-- 2.d greater_common_divisor
greater_common_divisor_alt1 :: Int -> Int -> Int
greater_common_divisor_alt1 a b
    | b == 0    = a
    | a >= b    = greater_common_divisor_alt1 b (a - b)
    | otherwise = greater_common_divisor_alt1 b a

-- 2.i arithmetic_progression_sum
arithmetic_progression_sum_alt1 :: Int -> Int -> Int -> Int
arithmetic_progression_sum_alt1 a r n
    | n == 0    = 0
    | otherwise = (a + (n - 1) * r) + arithmetic_progression_sum_alt1 a r (n - 1)

-- 2.j geometric_progression_sum
geometric_progression_sum_alt1 :: Int -> Int -> Int -> Int
geometric_progression_sum_alt1 a q n
    | n == 0    = 0
    | otherwise = a * q ^ (n - 1) + geometric_progression_sum_alt1 a q (n - 1)

-- 2.k binomial
binomial_alt1 :: Int -> Int -> Int
binomial_alt1 n m
    | m == 0    = 1
    | otherwise = binomial_alt1 (n - 1) (m - 1) * n `div` m

