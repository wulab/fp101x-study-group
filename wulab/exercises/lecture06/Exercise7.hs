{- Exercise 7

Choose a definition for the function dec2int :: [Integer] -> Integer
that converts a finite, non-partial list of non-bottom Integer digits,
that represents a decimal number, into the non-bottom Integer this
list represents. For example:

  > dec2int [2, 3, 4, 5]
  2345
  > dec2int []
  0
  > dec2int [0, 0, 0, 0]
  0

For additional understanding, try to experiment with infinite and
partial lists and see if you can spot any differences in behaviour for
the various implementations.
-}

dec2int [] = 0
dec2int xs = foldl (\ x y -> 10*x + y) 0 xs

-- https://wiki.haskell.org/Foldr_Foldl_Foldl%27

-- foldl f 0 [2,3,4,5]
-- foldl f 2 [3,4,5]
-- foldl f 23 [4,5]
-- foldl f 234 [5]
-- foldl f 2345 []
-- 2345

-- foldr f 0 [2,3,4,5]
-- f 2 (foldr f 0 [3,4,5])
-- f 2 (f 3 (foldr f 0 [4,5]))
-- f 2 (f 3 (f 4 (foldr f 0 [5])))
-- f 2 (f 3 (f 4 (f 5 (foldr f 0 []))))
-- f 2 (f 3 (f 4 (f 5 0)))
-- f 2 (f 3 (f 4 50))
-- f 2 (f 3 90)
-- f 2 120
-- 140
