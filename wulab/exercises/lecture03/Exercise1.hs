{- Exercise 1

The library function

  replicate :: Int -> a -> [a]

produces a list of identical elements. Choose one possible implementation for
this function. For example:

  > replicate 3 True
  [True, True, True]

-}

replicate n x = [x | _ <- [1..n]]
