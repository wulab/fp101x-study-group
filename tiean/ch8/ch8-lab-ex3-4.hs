import Data.Char

--count :: Eq a => a -> [a] -> Integer
count :: Eq a => a -> [a] -> Int
--count x xs = undefined
-- #############
-- ## Option 1 just use a simple recursive.
-- #############
--count a [] = 0
--count a (x : xs) = (if a == x then 1 else 0) + (count a xs)

-- #############
-- ## Option 2 - Use from foldr
-- #############
--
--count a xs = foldr (\x -> (+) (if a == x then 1 else 0)) 0 xs

-- #############
-- ## Option 3 - Use from foldr but make a format more shorter.
-- #############
--
count a = foldr (\x -> (+) (if a == x then 1 else 0)) 0

xs = [1, 2, 35, 2, 3, 4, 8, 2, 9, 0, 5, 2, 8, 4, 9, 1, 9, 7, 3, 9, 2, 0, 5, 2, 7, 6, 92, 8, 3, 6, 1, 9, 2, 4, 8, 7, 1, 2, 8, 0, 4, 5, 2, 3, 6, 2, 3, 9, 8, 4, 7, 1, 4, 0, 1, 8, 4, 1, 2, 4, 56, 7, 2, 98, 3, 5, 28, 4, 0, 12, 4, 6, 8, 1, 9, 4, 8, 62, 3, 71, 0, 3, 8, 10, 2, 4, 7, 12, 9, 0, 3, 47, 1, 0, 23, 4, 8, 1, 20, 5, 7, 29, 3, 5, 68, 23, 5, 6, 3, 4, 98, 1, 0, 2, 3, 8, 1]

poem =
  [ "Three Types for the Lisp-kings under the parentheses,",
    "Seven for the Web-lords in their halls of XML,",
    "Nine for C Developers doomed to segfault,",
    "One for the Dark Lord on his dark throne",
    "In the Land of Haskell where the Monads lie.",
    "One Type to rule them all, One Type to find them,",
    "One Type to bring them all and in the Lambda >>= them",
    "In the Land of Haskell where the Monads lie."
  ]

ys = map (\x -> ((x + 1) * 3) ^ 3 - 7) xs

-- The question is asking to get a result of "count 722 ys".
