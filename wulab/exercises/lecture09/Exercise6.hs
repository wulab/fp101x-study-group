{- Exercise 6

Given the definition of binary trees from the previous exercise,
define a function

   balance :: [Integer] -> Tree

that converts a finite, non-empty, non-partial, non-bottom list of
non-bottom integers into a balanced tree.
-}

import Exercise5

halve xs = splitAt (length xs `div` 2) xs

balance [x] = Leaf x
balance xs  = Node (balance ys) (balance zs)
   where
      (ys, zs) = halve xs
