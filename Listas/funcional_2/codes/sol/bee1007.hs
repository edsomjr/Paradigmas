import Text.Printf (printf)

main :: IO ()
main = do
    [a, b, c, d] <- map read . words <$> getContents :: IO [Int]
    printf "DIFERENCA = %d\n" (a * b - c * d)

