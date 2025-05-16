    -- Cada linha abaixo corresponde um padrão a ser checado
    factorial 0 = 1
    factorial n = n * factorial (n - 1)
    main = print (factorial 10)
