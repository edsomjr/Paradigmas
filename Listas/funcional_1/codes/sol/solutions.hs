-- 1.a second
second :: [a] -> Maybe a
second (_ : x : _) = Just x
second _           = Nothing

-- 1.b body
body :: [a] -> Maybe [a]
body []     = Nothing
body [_]    = Nothing
body (_:xs) = Just $ take (length xs - 1) xs

-- 1.c median
median :: [a] -> Maybe a
median [] = Nothing
median xs = Just $ head $ drop ((div (length xs + 1) 2) - 1) xs

-- 2.a parity
parity :: Int -> Int
parity n
    | n <= 1    = n
    | otherwise = parity $ n - 2

-- 2.b remainder
remainder :: Int -> Int -> Int
remainder a b
    | a < b     = a
    | otherwise = remainder (a - b) b

-- 2.c quotient
quotient :: Int -> Int -> Int
quotient a b
    | a < b     = 0
    | otherwise = 1 + quotient (a - b) b

-- 2.d greater_common_divisor
greater_common_divisor :: Int -> Int -> Int
greater_common_divisor a b
    | b == 0    = a
    | otherwise = greater_common_divisor b $ remainder a b

-- 2.e semifactorial
semifactorial :: Int -> Int
semifactorial n
    | n <= 1    = 1
    | otherwise = n * (semifactorial $ n - 2)

-- 2.f power
power :: Int -> Int -> Int
power a n
    | n == 0    = 1
    | otherwise = a * (power a $ n - 1)

-- 2.g sum_of_first_n
sum_of_first_n :: Int -> Int
sum_of_first_n n
    | n == 0    = 0
    | otherwise = n + (sum_of_first_n $ n - 1)

-- 2.h sum_of_first_n_squares
sum_of_first_n_squares :: Int -> Int
sum_of_first_n_squares n
    | n == 0    = 0
    | otherwise = (n * n) + (sum_of_first_n_squares $ n - 1)

-- 2.i arithmetic_progression_sum
arithmetic_progression_sum :: Int -> Int -> Int -> Int
arithmetic_progression_sum a r n
    | n == 0    = 0
    | otherwise = a + arithmetic_progression_sum (a + r) r (n - 1)

-- 2.j geometric_progression_sum
geometric_progression_sum :: Int -> Int -> Int -> Int
geometric_progression_sum a q n
    | n == 0    = 0
    | otherwise = a + q * geometric_progression_sum a q (n - 1)

-- 2.k binomial
binomial :: Int -> Int -> Int
binomial n m
    | m > n                = 0
    | (n == m) || (m == 0) = 1
    | otherwise            = binomial (n - 1) m + binomial (n - 1) (m - 1)

-- 2.l count_vowels
count_vowels :: String -> Int
count_vowels [] = 0
count_vowels (c:cs)
    | c `elem` "aeiou" = 1 + count_vowels cs
    | otherwise        = count_vowels cs

