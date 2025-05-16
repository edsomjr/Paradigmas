-- Processamento de arquivos no estilo funcional
import System.IO 

main :: IO ()
main = do
    inh <- openFile "input.txt" ReadMode
    outh <- openFile "output.txt" WriteMode

    input <- hGetContents inh
    hPutStrLn outh $ stripped input

    hClose inh
    hClose outh

stripped = unlines . map (unwords . words) . lines 
