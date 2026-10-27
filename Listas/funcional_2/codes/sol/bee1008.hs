import Text.Printf (printf)

main :: IO ()
main = do
    [number, hours, rate] <- words <$> getContents
    let salary = read hours * read rate :: Double
    printf "NUMBER = %d\nSALARY = U$ %.2f\n" (read number :: Int) salary

