{- Exercise 1

Choose the correct implementation of a function removeone :: Eq a => a
-> [a] -> [a], that removes the first occurence of a given element
from a list.
-}

module Exercise1 where

removeone :: Eq a => a -> [a] -> [a]
removeone x []                 = []
removeone x (y:ys) | x == y    = ys
                   | otherwise = y : removeone x ys
