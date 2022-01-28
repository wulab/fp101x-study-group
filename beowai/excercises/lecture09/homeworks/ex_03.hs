{-
Using recursion, and any correct implementation of the function add from the previous exercise, 
select from the following options, a total and terminating multiplication function 

mult :: Nat -> Nat -> Nat 

that multiplies two non-bottom, non-partial, finite natural numbers m and n, 

such that natToInteger (mult m n) = natToInteger m * natToInteger n.
-}

{-
module Main (main) where
import Data.List
import Data.Char
import Hugs.IOExts (unsafeCoerce)

-}

{-

data Nat = Zero
        | Succ Nat
        deriving Show

mult :: Nat -> Nat -> Nat
mult m Zero = Zero
mult m (Succ n) = add m (mult m n)
-}