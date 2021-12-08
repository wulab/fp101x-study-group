{-
Using the squares function that you have implemented, we can define a function sumSquares :: Integer -> Integer as follows:

sumSquares n = sum (squares n)

What is the value of: sumSquares 50?
-}

squares :: Integer -> [Integer]
squares n = [n | n <- [1..n], n > 0]

sumSquares :: Integer -> Integer
sumSquares n = sum (squares n)

-- Ans: sumSquare = 1275