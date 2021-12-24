{- Exercise 2

The library function last, which selects the last element of a
non-empty list, can be defined in terms of the library functions
introduced in this chapter. Choose all possible definitions.
-}

last xs   = head (drop (length xs - 1) xs)
last' xs  = xs !! (length xs - 1)
last'' xs = head (reverse xs)
