    -- Para rodar use o comando
    --      $ runghc wc.hs
    -- ou compile com o comando
    --      $ ghc wc.hs
    main = interact wc
        where wc input = ((show . length . words) input) ++ "\n"
