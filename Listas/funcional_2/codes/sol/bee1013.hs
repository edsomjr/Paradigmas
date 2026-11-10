import Text.Printf (printf)

main :: IO ()
main = do
    values <- map read . words <$> getContents :: IO [Int]
    printf "%d eh o maior\n" (maximum values)

