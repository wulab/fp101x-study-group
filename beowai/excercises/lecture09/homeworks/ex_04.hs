{-
The standard library defines the following algebraic data type to represent the possible comparisons between two values.

data Ordering = LT
                | EQ
                | GT

together with a function:

compare :: (Ord a) => a -> a -> Ordering

that decides if a value x :: Ord a => a is less than (LT), equal to (EQ), or greater than (GT) another value y :: Ord a => a.

Given the following data type for trees with Integers at the leafs and inside the nodes:

data Tree = Leaf Integer
            | Node Tree Integer Tree

Select all correct implementations of the function

occurs :: Integer -> Tree -> Bool

that decides whether the given Integer occurs in the given Tree. The Tree parameter is a finite, non-partial, non-bottom binary search tree.
Note: If you haven't encountered case expressions before, Google is your friend.
-}

{-
occurs m (Leaf n) = m == n
occurs m (Node l n r)
    = case compare m n of
        LT -> occurs m l
        EQ -> True
        GT -> occurs m r

occurs m (Leaf n) = compare m n
occurs m (Node l n r)
    = case compare m n of
        LT -> occurs m l
        EQ -> True
        GT -> occurs m r
wrong because compare return last result as Ordering a, not boolean

occurs m (Leaf n) = m == n
occurs m (Node l n r)
    | m == n = True
    | m < n = occurs m l
    | otherwise = occurs m r
-}