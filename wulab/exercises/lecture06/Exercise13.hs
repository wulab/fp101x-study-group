{- Exercise 13

Choose an implementation of the Prelude function iterate :: (a -> a)
-> a -> [a] using unfold.
-}

unfold p h t x
  | p x = []
  | otherwise = h x : unfold p h t (t x)

iterate' f = unfold (const False) id f
