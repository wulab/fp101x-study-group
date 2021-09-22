{- Exercise 10

What is the type of the following function:

  twice f x = f (f x)

-}

-- twice :: (a -> a) -> a -> a
twice f x = f (f x)
