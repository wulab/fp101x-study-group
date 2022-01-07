module Exercise3 where

{- Exercise 3

Define a recursive function count :: Eq a => a -> [a] -> Integer that
counts how many times a given value occurs in a list. Of course you
could implement this trivially using Predule functions or list
comprehensions, but we would like you to define this as a recursive
function of the shape:

  count a [] = ...
  count a (x:xs) = ... a ... x ... count a xs ...

Example: count "Haskell" ["Java", "PHP", "Javascript", "C#"] = 0
Example: count 'e' "The quick brown fox jumped over the lazy dog." = 4

Given the lists xs and ys that are defined in the template for this
lab, what is the result of: count 722 ys?
-}

count :: Eq a => a -> [a] -> Integer
count a [] = 0
count a (x:xs) | a == x    = 1 + count a xs
               | otherwise = count a xs

main = do
  -- xs <- return [1,2,35,2,3,4,8,2,9,0,5,2,8,4,9,1,9,7,3,9,2,0,5,2,7,6,92,8,3,6,1,9,2,4,8,7,1,2,8,0,4,5,2,3,6,2,3,9,8,4,7,1,4,0,1,8,4,1,2,4,56,7,2,98,3,5,28,4,0,12,4,6,8,1,9,4,8,62,3,71,0,3,8,10,2,4,7,12,9,0,3,47,1,0,23,4,8,1,20,5,7,29,3,5,68,23,5,6,3,4,98,1,0,2,3,8,1]
  let xs = [1,2,35,2,3,4,8,2,9,0,5,2,8,4,9,1,9,7,3,9,2,0,5,2,7,6,92,8,3,6,1,9,2,4,8,7,1,2,8,0,4,5,2,3,6,2,3,9,8,4,7,1,4,0,1,8,4,1,2,4,56,7,2,98,3,5,28,4,0,12,4,6,8,1,9,4,8,62,3,71,0,3,8,10,2,4,7,12,9,0,3,47,1,0,23,4,8,1,20,5,7,29,3,5,68,23,5,6,3,4,98,1,0,2,3,8,1]
  let ys = (map (\x -> ((x + 1) * 3) ^ 3 - 7) xs)
  putStrLn (show (count 722 ys))
