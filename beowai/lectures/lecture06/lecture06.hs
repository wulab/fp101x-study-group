{-
map         ::  (a -> b) -> [a] -> [b]
list comprehension: map f xs = [f x | x <- xs]
recursive:          map f [] = []
                    map f (x:xs) = f x : map f xs

filter      ::  (a -> Bool) -> [a] -> [a]
list comprehension: filter p xs = [x | x <- xs, p x]
recursive           filter p [] = []
                    filter p (x:xs)
                        | p x = x : filter p xs
                        | otherwise = filter p xs

takeWhile   ::  (a -> Bool) -> [a] -> [a]
recursive           takeWhile p [] = []
                    takeWhile p (x:xs)
                        | p x = x : takeWhile p xs
                        | otherwise = []

dropWhile   ::  (a -> Bool) -> [a] -> [a]
dropWhile _ [] = []
dropWhile p (x:xs)
    p x = dropWhile p xs
    otherwise = x:xs

null        ::  [a] -> Bool

or          ::  [a] -> Bool

foldl       ::	(a -> b -> a) -> a -> [b] -> a
it takes the second argument and the first item of the list 
and applies the function to them, then feeds the function with 
this result and the second argument and so on.

foldr       :: 	(a -> b -> b) -> b -> [a] -> b
it takes the second argument and the last item of the list 
and applies the function, then it takes the penultimate item 
from the end and the result, and so on

iterate     ::  (a -> a) -> a -> [a]
iterate f a = a : iterate f (f a)
creates an infinite list where the first item is calculated 
by applying the function on the secod argument, the second item 
by applying the function on the previous result and so on.

take        :: Int -> [a] -> [a]
take _ [] = []
take n (x:xs)
    | n <= 0 = []
    | otherwise = x : take (n-1) xs
creates a list, the first argument determines, how many items 
should be taken from the list passed as the second argument
-}