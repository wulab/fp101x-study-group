{-
Which of the following properties about lists is false:
-}

{-
True    -> x : xs = [a] ++ xs
True    -> [] ++ xs = xs
True    -> x : (xs ++ ys) = (x : xs) ++ ys
False   -> [x]:xs = [x, xs]
True    -> x : [] = [x]
-}