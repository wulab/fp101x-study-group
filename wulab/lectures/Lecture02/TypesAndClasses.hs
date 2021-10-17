-- curried form
zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

-- >>> zip' [1,2,3,4,5] [10,9,8,7,6]
-- [11,11,11,11,11]

-- tuple form
zip'' :: ([a],[b]) -> [(a,b)]
zip'' ([], _) = []
zip'' (_, []) = []
zip'' (x:xs,y:ys) = (x,y) : zip'' (xs,ys)

-- >>> zip'' ([1,2,3,4,5], [10,9,8,7,6])
-- [11,11,11,11,11]
