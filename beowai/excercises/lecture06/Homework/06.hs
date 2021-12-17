{-
Choose the option that implements the Prelude function

filter :: (a -> Bool) -> [a] -> [a]

taking into account only finite, non-partial input lists with non-bottom values and where the predicate p always returns either True, or False, but not bottom.
-}

{-
HINT
filter p xs = [x | x <- xs, p x]
filter => x:xs:[]
-}

{-
filter p = foldl (\ xs x -> if p x then x : xs else xs) []
foldl (\ xs x -> if (<3) x then x : xs then xs) [] [1..3]
\[] 1 -> 1:[]
\[1] 2 -> 2:[1]
\[2,1] 3 -> [2,1]
[2,1]

filter p = foldr (\ x xs -> if p x then x : xs else xs) []
foldr (\ x xs -> if (<3) x then x : xs then xs) [] [1..3]
\3 [] -> []
\2 [] -> 2:[]
\1 [2] -> 1:[2]
[1,2]

filter p = foldr (\ x xs -> if p x then xs ++ [x] else xs) []
foldr (\ x xs -> if (<3) x then xs ++ [x] then xs) [] [1..3]
\3 [] -> []
\2 [] -> [] ++ [2]
\1 [2] -> [2] ++ [1]
[2,1]

filter4 p = foldl (\ x xs -> if p x then xs ++ [x] else xs) []
foldl (\ x xs -> if (<3) x then xs ++ [x] then xs) [] [1..3]
\[] 1 -> if (<3) [] -> error
-}