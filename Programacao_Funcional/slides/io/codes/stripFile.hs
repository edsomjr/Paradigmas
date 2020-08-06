-- Processamento de arquivos no estilo imperativo
import System.IO 

main :: IO ()
main = do
    inh <- openFile "input.txt" ReadMode
    outh <- openFile "output.txt" WriteMode
    mainLoop inh outh
    hClose inh
    hClose outh

mainLoop :: Handle -> Handle -> IO ()
mainLoop inh outh = do
    ineof <- hIsEOF inh
    if ineof then return ()
             else do
                line <- hGetLine inh
                hPutStrLn outh $ stripped line
                mainLoop inh outh

stripped = unwords . words
