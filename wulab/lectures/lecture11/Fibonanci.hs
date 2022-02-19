fibs :: [Integer]
fibs = fibgen 0 1

fibgen :: Integer -> Integer -> [Integer]
fibgen a b = a : fibgen b (a+b)
