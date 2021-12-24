{- Exercise 3

The library function init, which removes the last element from a
non-empty list, can be defined in terms of the library functions
introduced in this chapter. Choose all possible definitions.
-}

init' xs  = reverse (tail (reverse xs))
init'' xs = take (length xs - 1) xs
