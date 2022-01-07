{- Exercise 2

Choose all possible implementations for a function putStrLn' :: String
-> IO () that takes a String parameter and writes it to the standard
output, followed by a newline character.

Assume "fast and loose" reasoning where there are no bottoms involved,
and all functions are total, and all values are finite.
-}

-- ghci> :cd wulab/exercises/lecture08
-- ghci> :load Exercise2.hs
module Exercise2 where
  import Exercise1

  putStrLn' [] = putChar '\n'
  putStrLn' xs = putStr' xs >> putChar '\n'
