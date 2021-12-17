-- Using the following definition, show how drop 3 [1, 2, 3, 4, 5] is evaluated.

drop :: Int -> [a] -> [a]
drop 0 xs = xs
drop n [] = []
drop n (_:xs) = drop (n-1) xs

drop 3 [1,2,3,4,5]
= { applying drop }
drop 2 [2,3,4,5]
= { applying drop }
drop 1 [3,4,5]
= { applying drop }
drop 0 [4,5]
= { applying drop }
= [4,5]