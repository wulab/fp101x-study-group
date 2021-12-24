{- Exercise 7

How should the definition of the function qsort be modified so that it
produces a reverse sorted version of a list? Choose all possible
definitions.
-}

qsort []     = []
qsort (x:xs) = qsort ys ++ [x] ++ qsort zs
               where
                 ys = [a | a <- xs, a >  x]
                 zs = [b | b <- xs, b <= x]
