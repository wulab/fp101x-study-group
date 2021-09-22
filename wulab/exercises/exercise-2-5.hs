{- Exercise 5

What is the type of the following function:

  second xs = head (tail xs)

-}

second :: [a] -> a
second xs = head (tail xs)
