{-
Modify the previous definition of squares such that it now takes two non-bottom Integer arguments, m >= 0 and n >= 0 and returns a list of the m square numbers that come after the first n square numbers.

Example:
squares' 4 2 = [3*3, 4*4, 5*5, 6*6]
squares' 2 0 = [1*1, 2*2]
squares' 0 2 = []
squares' 0 0 = []
We can define a new sumSquares' function as follows:

sumSquares' x = sum . uncurry squares' $ (x, x)

What is the value of: sumSquares' 50?
-}

squares :: Integer -> Integer -> [Integer]
squares m n = [n*n | m > 0, n <- [(n+1)..(n+m)], n > 0]

sumSquares' x = sum (squares x x)

-- Ans.: 295425
