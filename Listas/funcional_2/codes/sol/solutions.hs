import Data.Char (isLower, digitToInt)

-- 1.a count
count :: String -> Int
count = length . filter (isLower . last) . words

-- 1.b inverses
inverses :: [Int] -> [Double]
inverses = map ((1 /) . fromIntegral) . filter (/= 0)

-- 1.c odds
odds :: Int -> Int
odds = length . filter (odd . digitToInt) . show . abs

-- 1.d palindromes
palindromes :: String -> Int
palindromes = length . filter ((==) <*> reverse) . words

-- 1.e isOctNumber
isOctNumber :: Int -> Bool
isOctNumber = all (flip elem "01234567") . show . abs

-- 2.a eval
eval :: [Int] -> Int -> Int
eval as x = foldl (\acc a -> acc * x + a) 0 as

-- 2.b k_factorial
k_factorial :: Int -> Int -> Int
k_factorial n k = foldl (*) 1 (if n <= -k then [0] else takeWhile (>0) (iterate (subtract k) n))

-- 2.c mean
mean :: [Int] -> Double
mean = uncurry (/) . foldl (\(s, n) x -> (s + fromIntegral x, n + 1)) (0, 0)

-- 2.d arithmetic_progression_sum
arithmetic_progression_sum :: Int -> Int -> Int -> Int
arithmetic_progression_sum n a q = foldl (+) 0 . take n $ iterate (+ q) a

-- 2.e exp_approx
exp_approx :: Double -> Double
exp_approx x = foldl (+) 0 $ map (\n -> x ^ n / fromIntegral (product [1..n])) [0..10 :: Int]
