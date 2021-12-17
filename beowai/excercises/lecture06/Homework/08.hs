{-
Choose an explanation for why the following definition of 
    zsumsqreven is invalid:

sumsqreven = compose [sum, map (^ 2), filter even]

compose :: [a -> a] -> (a -> a)
compose = foldr (.) id
-}

{-
The definition of sumsqreven doesn't even typecheck
-}