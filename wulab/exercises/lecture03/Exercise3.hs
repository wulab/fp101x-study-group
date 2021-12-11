{- Exercise 3

A positive integer is perfect if it equals the sum of its factors, excluding the
number itself. Choose the correct definition of the function

  perfects :: Int -> [Int]

that returns the list of all perfect numbers up to a given limit.

  > perfects 500
  [6, 28, 496]

-}

factors n = [x | x <- [1..n], n `mod` x == 0]

perfects n = [x | x <- [1..n], isPerfect x]
  where isPerfect num = sum (init (factors num)) == num
