{- Exercise 0

Choose a possible definition of the function choices :: [a] -> [[a]],
that returns all choices from a list, which are given by all possible
ways of selecting zero or more elements in any order.

  > choices :: [a] -> [[a]]
  > choices [1,2]
  [[], [1], [2], [1,2], [2,1]]
-}

subs :: [a] -> [[a]]
subs []     = [[]]
subs (x:xs) = yss ++ map (x:) yss
  where
    yss = subs xs

{-
subs [1,2]
subs [2] ++ map (1:) (subs [2])
subs [] ++ map (2:) (subs []) ++ map (1:) (subs [] ++ map (2:) (subs []))
[[]] ++ map (2:) [[]] ++ map (1:) ([[]] ++ map (2:) [[]])
[[]] ++ [[2]] ++ map (1:) ([[]] ++ [[2]])
[[]] ++ [[2]] ++ map (1:) [[], [2]]
[[]] ++ [[2]] ++ [[1], [1,2]]
[[], [2], [1], [1,2]]
-}

interleave :: a -> [a] -> [[a]]
interleave x []     = [[x]]
interleave x (y:ys) = (x:y:ys) : map (y:) (interleave x ys)

perms :: [a] -> [[a]]
perms []     = [[]]
perms (x:xs) = concat (map (interleave x) (perms xs))

choices :: [a] -> [[a]]
choices [] = [[]]
choices xs = [zs | ys <- subs xs, zs <- perms ys]
