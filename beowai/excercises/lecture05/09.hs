-- Choose the correct definition for the function merge :: Ord a => [a] -> [a] -> [a] that merges two sorted lists in ascending order to give a single sorted list in ascending order. For example:

> merge [2,5,6] [1,3,4]
[1,2,3,4,5,6]

merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
  = if x <= y then x : merge xs (y:ys) else y : merge (x:xs) ys