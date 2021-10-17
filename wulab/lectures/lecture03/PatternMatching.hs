-- Pattern Matching

not :: Bool -> Bool
not False = True
not True  = False

(&&) :: Bool -> Bool -> Bool
True && True   = True
True && False  = False
False && True  = False
False && False = False

{- Pure function
True && x | x == True = True
          | x == False = False
False && _ = False
-}

{- Wild card
True && True = True
_ && _       = False
-}
