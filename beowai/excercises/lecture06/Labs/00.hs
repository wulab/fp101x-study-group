{- Using a list comprehension, define a function that selects all the even numbers from a list.

evens :: [Integer] -> [Integer]

Example: evens [2, 5, 6, 13, 32] = [2, 6, 32]

What is the value of the expression: sum . evens $ [827305 .. 927104]
-}

evens :: [Integer] -> [Integer]
evens xs = [x | x <- xs, even x]

x = sum (evens [827305..927104])

-- x = 43772529500