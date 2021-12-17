-- Choose the correct definition for the function that decides if a value is an element of a list:

elem :: Eq a => a -> [a] -> Bool

elem _ [] = False
elem x (y:ys)
  | x == y = True
  | otherwise = elem x ys