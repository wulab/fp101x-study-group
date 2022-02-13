{- Exercise 2

Choose a correct implementation of the function isChoice :: Eq a =>
[a] -> [a] -> Bool that decides whether one list is chosen from
another. In other words, isChoice xs ys checks whether all elements in
xs are present in ys.
-}

import Exercise1

isChoice :: Eq a => [a] -> [a] -> Bool
isChoice [] _      = True
isChoice (x:xs) [] = False
isChoice (x:xs) ys = elem x ys && isChoice xs (removeone x ys)
