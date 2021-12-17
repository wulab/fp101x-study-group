{-
Choose a definition for the function 

dec2int :: [Integer] -> Integer 

that converts a finite, non-partial list of non-bottom Integer digits, 
that represents a decimal number, into the non-bottom Integer this list represents. 

For example:

> dec2int [2, 3, 4, 5]
2345
> dec2int []
0
> dec2int [0, 0, 0, 0]
-}

{-
A.
dec2int = foldr (\x y -> 10 * x + y) 0
\5 0 -> 10 * 5 + 0 = 50
\4 50 -> 10 * 4 + 50 = 90
\3 90 -> 10 * 3 + 90 = 120
\2 120 -> 10 * 2 + 120 = 140

B.
dec2int = foldl (\x y -> x + 10 * y) 0
\0 2 -> 0 + 10 * 2 = 20
\20 3 -> 20 + 10 * 3 = 50
\50 4 -> 50 + 10 * 4 = 90
\90 5 -> 90 + 10 * 5 = 140

C.
dec2int = foldl (\x y -> 10 * x + y) 0
\0 2 -> 10 * 0 + 2 = 2
\2 3 -> 10 * 2 + 3 = 23
\23 4 -> 10 * 23 + 4 = 234
\234 5 -> 10 + 234 + 5 = 2345

D.
dec2int = foldr (\x y -> x + 10 * y) 0
\5 0 -> 5 + 10 * 0 = 5
\4 5 -> 4 + 5 * 10 = 54
\3 54 -> 3 + 54 * 10 = 543
\2 543 -> 2 + 10 * 543 = 5432
-}