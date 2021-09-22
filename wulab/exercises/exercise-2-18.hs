{- Exercise 18

What is the type of the following function:

  f xs = take 3 (reverse xs)

-}

f :: [a] -> [a]
f xs = take 3 (reverse xs)
