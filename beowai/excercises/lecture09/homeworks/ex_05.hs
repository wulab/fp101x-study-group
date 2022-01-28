{-
Consider the following type of binary trees, with only values at the leafs:

data Tree = Leaf Integer
            | Node Tree Tree

We say that a tree is balanced if the number of leaves in the left and right subtree of every node differs by at most one, with leaves themselves being trivially balanced.

Which option correctly implements

balanced :: Tree -> Bool

that decides if a finite, non-partial, non-bottom binary tree is balanced or not?
-}

{-
leaves (Leaf x) = x
leaves (Node l r) = leaves l + leaves r
balanced (Leaf _) = True
balanced (Node l r) = abs (leaves l - leaves r) <= 1 
    && balanced l
    && balanced r
-}