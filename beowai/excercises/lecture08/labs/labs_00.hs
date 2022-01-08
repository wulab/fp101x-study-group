{-
Define a recursive function by induction over integers 

triangle :: Integer -> Integer 

such that triangle n returns the sum of all numbers in the 
list [0..n], where n >= 0. Of course you could implement 
this trivially using sum [0..n], but we would like you to 
define this as a recursive function of the shape:

triangle 0 = ...
triangle (n + 1) = ... (n + 1) ... triangle n ...

If you don't like n + k patterns, you can define the recursive case in terms of n and n - 1.

Example: triangle 4 = 4 + 3 + 2 + 1 + 0 = 10

What is the result of: triangle 500
-}

{-
Ans.

triangle :: Integer -> Integer
triangle 0 = 0
triangle n = n + triangle (n-1)
-}