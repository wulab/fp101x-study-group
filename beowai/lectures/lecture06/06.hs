{-
Using the squares' function that you've defined in the previous exercise, 

what is the value of: sum $ squares' 10 0:

-}

squares' :: Integer -> Integer -> [Integer]
squares' m n = [n*n | m > 0, n <- [(n+1)..(n+m)], n > 0]

x = sum (squares' 10 0)

-- Ans: x = [1,4,9,16,25,36,49,64,81,100]