    -- Definição alternativa de lista
    data List a = Cons a (List a)
                | Null
                deriving (Show)

    -- Define uma lista do novo tipo
    xs = Cons 1 (Cons 2 (Cons 3 Null))

    -- Converte da lista definida para a lista padrão do Haskell
    toList Null = []
    toList (Cons x xs) = x : toList xs

    main = print (xs, toList xs)
