{- Exercise 9

Choose the correct definition for the function
merge :: Ord a => [a] -> [a] -> [a] that merges two sorted lists in ascending order to give a single sorted list in ascending order. For example:

  > merge [2, 5, 6] [1, 3, 4]
  [1, 2, 3, 4, 5, 6]

-}

merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)
                    | x >  y = y : merge (x:xs) ys
