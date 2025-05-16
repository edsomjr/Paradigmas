    import Data.Char

    main = print (filter isHexDigit s) where
        s = "Coordenadas (20A, 38F, 40X)"

    -- saída: "Cdeada20A38F40" 
