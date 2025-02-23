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
  if sort (deleteSpaces x) == sort (deleteSpaces y) 
    then True
    else False

-- delete spaces
deleteSpaces :: String -> String
deleteSpaces [] = []
deleteSpaces (x:xs) =
  if x == ' '
    then deleteSpaces xs
    else [x] ++ deleteSpaces xs

-- common suffix
commonSuffix :: [String] -> String
commonSuffix [] = ""
commonSuffix xs = reverse (foldl commonPrefix (head inverted) (tail inverted))
  where inverted = invertedWord xs

-- common prefix
commonPrefix :: String -> String -> String
commonPrefix (x:xs) (y:ys) 
  | x == y  = x : commonPrefix xs ys
  | otherwise = []
commonPrefix _ _ = []

-- inverted word
invertedWord :: [String] -> [String]
invertedWord xs = map reverse xs


-- intersection
intersection :: (Eq a) => [a] -> [a] -> [a]
intersection xs ys = [y | y <- ys, y `elem` xs]

-- ackerman
ackerman :: Integer -> Integer -> Integer
ackerman m n
  | m == 0    = n + 1
  | n == 0    = ackerman (m - 1) 1
  | otherwise = ackerman (m - 1) (ackerman m (n - 1))

-- quicksort
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =  
  let left  = quicksort [a | a <- xs, a <= x]
      right = quicksort [a | a <- xs, a > x]
  in  left ++ [x] ++  right

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
