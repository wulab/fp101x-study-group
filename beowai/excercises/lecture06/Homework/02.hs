{-
Choose all options that implement the Prelude function

any :: (a -> Bool) -> [a] -> Bool

taking into account only finite, non-partial input lists 
with non-bottom values and where the predicate p 
always returns either True, or False, but not bottom.
-}

{-
any p = map p . or
any :: ([a] -> Bool) -> [a] -> [Bool]
No

any p = or . map p
any :: (a -> Bool) -> [a] -> Bool
Yes

any p xs = length (filter p xs) > 0
any :: (a -> Bool) -> [a] -> Bool
Yes

any p = not . null . dropWhile (not . p)
any :: (a -> Bool) -> [a] -> Bool
Yes

any p = null . filter p
any :: (a -> Bool) -> [a] -> Bool
No : 

any p xs = not (all (\ x -> not (p x)) xs)
any :: (a -> Bool) -> [a] -> Bool
Yes

any p xs = foldr (\ x acc -> (p x) || acc) False xs
any :: (a -> Bool) -> [a] -> Bool
Yes

any p xs = foldr (||) True (map p xs)
any :: (a -> Bool) -> [a] -> Bool
No : Output always return true, foldr (||) True [] -> True
-}