{- Exercise 1

The script below contains syntactic errors. Correct these errors and
then choose right answer.

  N =  a 'div' length xs
     where
        a = 10
       xs = [1, 2, 3, 4, 5]

-}

n = a `div` length xs
    where
      a = 10
      xs = [1, 2, 3, 4, 5]

n' = a `div` length xs where { a = 10; xs = [1, 2, 3, 4, 5] }
