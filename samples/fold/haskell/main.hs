import System.Environment
import System.Exit
import HaskellFold

--  -b, --bytes         count bytes rather than columns
--  -s, --spaces        break at spaces
--  -w, --width=WIDTH   use WIDTH columns instead of 80
      --help     display this help and exit
      --version  output version information and exit

-- foldFiles :: Bool -> Bool -> Int -> [String] -> [[Char]] -> IO ()

parseArgs :: Bool -> Bool -> Int -> [String] -> [[Char]] -> IO ()
--parseArgs countBytes breakAtSpaces width files [] = foldFiles countBytes breakAtSpaces width files
parseArgs countBytes breakAtSpaces width files [] = putStrLn "no more args"

parseArgs countBytes breakAtSpaces width files (x:xs) = case x of
    "--help"  -> putStrLn help >> exitWith ExitSuccess
    "--version"  -> putStrLn version >> exitWith ExitSuccess
    otherwise -> putStrLn (invalidOption x) >> exitWith (ExitFailure 1)

parse :: [[Char]] -> IO ()
parse = parseArgs False False 80 ["-"]

main :: IO ()
main = do
    args <- getArgs
    parse args
