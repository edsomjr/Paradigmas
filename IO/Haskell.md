## Haskell

### Escrita em console

Dentre as diferentes formas de se escrever na saída padrão, Haskell disponibiliza as funções `putStrLn` e `putStr`.

#### Funções `putStrLn` e `putStr`

Ambos funções recebem uma string como parâmetro e retornam `IO ()`, conforme podemos ver em seus tipos, listados abaixo:

```haskell
putStrLn :: String -> IO ()
putStr :: String -> IO ()
```

A diferença entre ambas é que a primeira adiciona um caractere de fim de linha (`\n`) à string passada como parâmetro. Abaixo segue uma implementação do tradicional `Hello, World!` em Haskell:

```haskell
main = putStrLn "Ola Mundo"
```

Como o parâmetro destas funções é do tipo string, a impressão de outros tipos demanda a conversão para string, geralmente feita por meio da função `show`, cujo tipo é 

```haskell
show :: Show a => a -> String
```

Para tipos numéricos, uma alternativa é utilizar a função `print`.

#### Função `print`

