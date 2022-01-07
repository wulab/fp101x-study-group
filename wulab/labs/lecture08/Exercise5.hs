{- Exercise 5

Euclid’s Algorithm returns the greatest common factor of two integers
n and m where both n and m are greater than 0. The algorithm
repeatedly subtracts the smaller number from the larger until the two
numbers are equal, and then returns that number.

Example: euclid (5,7) = euclid (5,2) = euclid (3,2) = euclid (1,2) = euclid (1,1) = 1
Example: euclid (4, 2) = euclid (2, 2) = 2

Define a recursive function that implements euclid :: (Int, Int) -> Int

What is the result of: euclid (13404, 8832)?
-}

module Exercise5 where

euclid :: (Int, Int) -> Int
euclid (x, y) | x < y = euclid (x, y-x)
              | x > y = euclid (x-y, x)
              | otherwise = x

main = putStrLn (show (euclid (13404, 8832)))
