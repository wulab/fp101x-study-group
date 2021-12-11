{-
Using a list comprehension, define a function coords :: Integer -> Integer -> [(Integer, Integer)] that returns a list of all coordinate pairs on an [0..m] × [0..n] rectangular grid, where m and n are non-bottom Integers >= 0.

Example:

coords 1 1 = [(0,0), (0,1), (1,0), (1,1)]
coords 1 2 = [(0,0), (0,1), (0,2), (1,0), (1, 1), (1, 2)]

What is the value of: foldr (-) 0 . map (uncurry (*)) $ coords 5 7

map :: (a -> b) -> [a] -> [b]

uncurry :: (a -> b -> c) -> (a, b) -> c
-}

coords :: Integer -> Integer -> [(Integer, Integer)]
coords m n = [(m, n) | m <- [0..m], m >= 0, n <- [0..n], n >= 0]

-- x = foldr (-) 0 (map (uncurry (*)) (coords 5 7))
-- Ans : -60

