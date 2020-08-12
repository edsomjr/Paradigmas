-- Elimina os comentários do arquivo
import Data.Char
import Data.List

main = interact (unlines . f . lines) where
    -- Este comentário também será filtradao
    f = filter (not . isPrefixOf "--" . dropWhile isSpace)
