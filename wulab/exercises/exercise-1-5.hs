{- Exercise 5

Show that sum [x] = x for any number x.
Sum is defined as follows:

  sum []       = 0
  sum (x : xs) = x + sum xs

-}

{-
sum [x]
= { applying sum }
x + sum []
= { applying sum }
x + 0
= { applying + }
x
-}
