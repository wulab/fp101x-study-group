{-
Which of the following expressions is equal to [1, 2, 3, 4]:
-}

{-
Ans.
take 4 (iterate (+1) 1)

take 4 -> 1 : iterate (+1) 1
take 3 -> 1 : 2 : iterate (+1) 2
take 2 -> 1 : 2 : 3 : iterate (+1) 3
take 1 -> 1 : 2 : 3 : 4 : iterate (+1) 4
take 0 -> 1 : 2 : 3 : 4 : []
-}