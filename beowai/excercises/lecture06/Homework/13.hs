{-
Choose an implementation of the Prelude function 
iterate :: (a -> a) -> a -> [a] 
using unfold.
-}

{-
Ans.

iterate f a = a : iterate f (f a)
take 5 (iterate (2*) 1)
take 5 -> 1 : iterate (2*) 1
take 4 -> 1 : 2 : iterate (2*) 2
take 3 -> 1 : 2 : 4 : iterate (2*) 4
take 2 -> 1 : 2 : 4 : 8 : iterate (2*) 8
take 1 -> 1 : 2 : 4 : 8 : 16 : iterate (2*) 16
take 0 -> 1 : 2 : 4 : 8 : 16 : []

unfold p h t x 
    | p x = []
    | otherwise = h x : unfold p h t (t x)

p = (const False)
h = id
t = f
-}