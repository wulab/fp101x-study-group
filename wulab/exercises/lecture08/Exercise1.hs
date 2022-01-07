{- Exercise 1

Which of the following implementations defines a function putStr' ::
String -> IO () that takes a String as its parameter and writes it to
the standard output?

Note: The helper function putChar :: Char -> IO () takes a character
as its parameter and writes it to the standard output.
-}

-- Module name is required to import Exercise1
module Exercise1 where

putStr' [] = return ()
putStr' (x:xs) = putChar x >> putStr' xs

{- https://stackoverflow.com/a/2486591

  a >> b >> c >> d is equivalent to
  do a
     b
     c
     d

  a >>= (b >>= (c >>= d)) is equivalent to
  do r1 <- a
     r2 <- b r1
     r3 <- c r2
     d r3
-}
