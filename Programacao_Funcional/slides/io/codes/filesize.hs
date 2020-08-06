-- Computa o número de bytes contidos no arquivo indicado
import System.IO

main = do
    putStrLn "Insira o nome do arquivo:"
    path <- getLine
    h <- openFile path ReadMode
    size <- fileSize h
    print size
    hClose h

fileSize :: Handle -> IO Integer
fileSize h = do
    hSeek h SeekFromEnd 0
    size <- hTell h
    return size
