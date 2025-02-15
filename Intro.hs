-- | Práctica 1: Introducción a Haskell
-- Profesor: Manuel Soto Romero
-- Ayudante: Diego Méndez Medina
-- Ayudante: José Alejandro Pérez Marquez
-- Laboratorio: Erick Daniel Arroyo Martínez
-- Laboratorio: Erik Rangel Limón
module Intro where

import Data.Char
import Data.List
import GHC.Generics

-- first vowelsq
firstVowels :: String -> String
firstVowels [] = []
firstVowels (x : xs) = getVowels (x : xs) ++ getConsonants (x : xs)

-- get consonants
getConsonants :: String -> String
getConsonants [] = []
getConsonants (x : xs) =
  if isVowel x == False
    then [x] ++ getConsonants xs
    else getConsonants xs

-- get vowels
getVowels :: String -> String
getVowels [] = []
getVowels (x : xs) =
  if isVowel x
    then [x] ++ getVowels xs
    else getVowels xs

-- is vowel
isVowel :: Char -> Bool
isVowel x = if (x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u' || x == 'A' || x == 'E' || x == 'I' || x == 'O' || x == 'U') then True else False

-- is anagram
isAnagram :: String -> String -> Bool
isAnagram x y =
  if sortString (deleteSpaces x) == sortString (deleteSpaces y) 
    then True
    else False

-- sort string
sortString :: String -> String
sortString [] = []
sortString (x:xs) =
  if x >= getFirst xs
    then sortString (sortString xs) ++ [x]
    else [x] ++ xs

-- delete spaces
deleteSpaces :: String -> String
deleteSpaces [] = []
deleteSpaces (x:xs) =
  if x == ' '
    then deleteSpaces xs
    else [x] ++ deleteSpaces xs

-- get first
getFirst :: String -> Char
getFirst [] = ' '
getFirst (x:xs) = x
 
-- common suffix
commonSuffix :: [String] -> String
commonSuffix = undefined

-- intersection
interseccion :: (Eq a) => [a] -> [a] -> [a]
interseccion = undefined

-- ackerman
ackerman :: Integer -> Integer -> Integer
ackerman = undefined

-- quicksort
quicksort :: (Ord a) => [a] -> [a]
quicksort = undefined

-- Definición de un árbol binario de búsqueda (BST)
data BTree a
  = Empty
  | Node a (BTree a) (BTree a)
  deriving (Show, Eq)

-- bTreeInsert
bTreeInsert :: (Ord a) => a -> BTree a -> BTree a
bTreeInsert = undefined

-- bTreeSearch
bTreeSearch :: (Ord a) => a -> BTree a -> Bool
bTreeSearch = undefined

-- bTreeMap
bTreeMap :: (a -> b) -> BTree a -> BTree b
bTreeMap = undefined

-- bTreeHeight
bTreeHeight :: BTree a -> Int
bTreeHeight = undefined

-- Ejemplo de arbol
bTree1 =
  Node
    6
    ( Node
        4
        ( Node
            2
            (Node 1 Empty Empty)
            (Node 3 Empty Empty)
        )
        (Node 5 Empty Empty)
    )
    ( Node
        8
        (Node 7 Empty Empty)
        ( Node
            9
            Empty
            (Node 10 Empty Empty)
        )
    )

-- | Número de pruebas
pruebas :: Int
pruebas = 1000
