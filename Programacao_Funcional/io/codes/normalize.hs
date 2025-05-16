import Data.Char
import Data.List
import System.Directory

-- map ($ x) [f1, f2, ..., fN] computa [f1 x, f2 x, ..., fN x]
normalize infile = ys ++ ext
    where
        (name, ext) = span (\x -> x /= '.') infile
        xs = map (\c -> if isSpace c then '_' else c) name
        p = (\c -> any $ map ($ c) [isAlphaNum, (=='_'), (=='/')]) 
        ys = filter p xs 

main = do
    infile <- getLine
    let outfile = normalize infile
    renameFile infile outfile
