{-
Choose the equivalent of the following list comprehension 
[f x | x <- xs, p x] 
expressed using higher-order functions.
-}

{-
map p (map f xs) : [f x | x <- xs]

filter p (map f xs) : [p x | x <- xs, f x]

map f (filter p xs) : [f x | x <- xs, p x]

map f (takeWhile p xs) : -
-}