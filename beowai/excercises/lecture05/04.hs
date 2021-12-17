-- Choose all correct definitions for the function that decides if all logical values in a list are True:

and :: [Bool] -> Bool

and [] = True
and (b:bs) = b && and bs

and [] = True
and (b:bs)
  | b = and bs
  | otherwise = False

and [] = True
and (b:bs)
  | b == False = False
  | otherwise = and bs

and [] = True
and (b:bs) = and bs && b