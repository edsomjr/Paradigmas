import System.IO 

main :: IO ()
main = do
    input <- readFile "input.txt"
    writeFile "output.txt" $ stripped input

stripped = unlines . map (unwords . words) . lines 
