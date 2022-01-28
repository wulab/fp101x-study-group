{-
The expression Add (Val 1) (Val 2) is a value of the datatype:
-}

data Expr = Add Expr Expr | Val Int