import Text.Printf (printf)

main :: IO ()
main = do
    [x, y] <- words <$> getContents
    printf "%.3f km/l\n" (read x / read y :: Double)

