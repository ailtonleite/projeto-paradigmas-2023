module App where

import Data.Char (isAlphaNum)
import System.Random

-- TESTE (IGNORAR) --
soma :: Int -> Int -> Int
soma a b = a+b

-- PROJETO --
newtype Pais = Pais { nomePais :: String }
    deriving (Show)

-- colocar essa lista de paises em um arquivo separado depois
paises :: [Pais]
paises =
    [ Pais "Brasil"
    , Pais "Estados Unidos"
    , Pais "Franca"
    , Pais "Japao"
    , Pais "India"
    , Pais "Australia"
    ]

-- Recebe uma lista e retorna um pais aleatório
selecionarAleatorio :: [s] -> IO s
selecionarAleatorio xs = do
    index <- randomRIO (0, length xs - 1)
    return (xs !! index)