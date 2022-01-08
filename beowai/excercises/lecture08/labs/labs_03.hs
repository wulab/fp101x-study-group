{-
Define a recursive function 

count :: Eq a => a -> [a] -> Integer 

that counts how many times a given value occurs in a list. 
Of course you could implement this trivially using 
Predule functions or list comprehensions, but we would like you 
to define this as a recursive function of the shape:

count a [] = ...
count a (x:xs) = ... a ... x ... count a xs ...

Example: count "Haskell" ["Java", "PHP", "Javascript", "C#"] = 0
Example: count 'e' "The quick brown fox jumped over the lazy dog." = 4

Given the lists xs and ys that are defined in the template for this lab, what is the result of: count 722 ys?
-}