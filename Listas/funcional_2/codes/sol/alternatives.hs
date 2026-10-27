import Data.Char (isLower)

-- 1.a count
count_alt1 :: String -> Int
count_alt1 = length . filter id . map (isLower . last) . words

count_alt2 :: String -> Int
count_alt2 = length . filter isLower . map last . words

-- 1.b inverses
inverses_alt1 :: [Int] -> [Double]
inverses_alt1 = map (recip . fromIntegral) . filter (/= 0)

-- 1.c odds
odds_alt1 :: Int -> Int
odds_alt1 = length . filter odd . map (\c -> read [c] :: Int) . show . abs

odds_alt2 :: Int -> Int
odds_alt2 = length . filter (`elem` "13579") . show . abs

-- 1.d palindromes
palindromes_alt1 :: String -> Int
palindromes_alt1 = length . filter (uncurry (==)) . map (\s -> (reverse s, s)) . words

palindromes_alt2 :: String -> Int
palindromes_alt2 = length . filter (uncurry (==)) . map ((,) <*> reverse) . words

palindromes_alt3 :: String -> Int
palindromes_alt3 = length . filter (uncurry (==)) . map (liftA2 (,) id reverse) . words

-- 1.e isOctNumber
within :: Eq a => [a] -> a -> Bool
within = flip elem

isOctNumber_alt1 :: Int -> Bool
isOctNumber_alt1 = all (within "01234567") . show . abs

isOctNumber_alt2 :: Int -> Bool
isOctNumber_alt2 = all (< '8') . show . abs

-- 2.a eval
eval_alt1 :: [Int] -> Int -> Int
eval_alt1 as x = foldl ((+) . (* x)) 0 as

-- 2.b k_factorial
k_factorial_alt1 :: Int -> Int -> Int
k_factorial_alt1 n k =
    foldl (*) 1 $ takeWhile (> 0) (iterate (subtract k) n) ++ [0 | n <= -k]

-- 2.c mean
mean_alt1 :: [Int] -> Double
mean_alt1 = (/) . fromIntegral . foldl (+) 0 <*> fromIntegral . length

-- 2.d arithmetic_progression_sum
arithmetic_progression_sum_alt1 :: Int -> Int -> Int -> Int
arithmetic_progression_sum_alt1 n a q = foldl (+) 0 . take n $ flip iterate a ((+) q)

arithmetic_progression_sum_alt2 :: Int -> Int -> Int -> Int
arithmetic_progression_sum_alt2 n a q = foldl (\acc i -> acc + a + i * q) 0 [0 .. n - 1]

-- 2.e exp_approx
exp_approx_alt1 :: Double -> Double
exp_approx_alt1 x =
    foldl (+) 0 $ map (\(a, b) -> (a ^ b) / fromIntegral (product [1 .. b])) $
        zip (replicate 11 x) [0 .. 10 :: Int]

exp_approx_alt2 :: Double -> Double
exp_approx_alt2 x = foldl (\acc n -> 1 + acc * x / n) 1 [10, 9 .. 1]

