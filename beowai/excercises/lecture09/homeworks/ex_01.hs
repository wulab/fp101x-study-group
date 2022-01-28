{-
Select all possible total and terminating implementations of a conversion function 

integerToNat :: Integer -> Nat 

that converts any non-bottom, non-partial, finite Integer value >= 0, into the corresponding Nat value.

Warning: In the lectures Erik talks about the n + k pattern being taken out in haskell, 
however in Hugs this still works and we are using hugs in this course.

module Main (main) where
import Data.List
import Data.Char
import Hugs.IOExts (unsafeCoerce)

data Nat = Zero
        | Succ Nat
        deriving Show
-}

{-
integerToNat 0 = Zero
integerToNat (n+1) = Succ (integerToNat n)

integerToNat (n+1) = Succ (integerToNat n)
integerToNat 0 = Zero

integerToNat (n+1) = let m = integerToNat n in Succ m
integerToNat 0 = Zero
-}