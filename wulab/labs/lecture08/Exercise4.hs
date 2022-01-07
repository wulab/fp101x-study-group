{- Exercise 4

Given the list poem defined in the template, what is the result of:

  count 101 (poem >>= \x -> map (ord . \x -> chr (ord x + 4)) x)?

Note: You will need to import Data.Char in order to be able to use the
functions chr and ord in your scripts.
-}

import Data.Char
import Exercise3 hiding (main)

main = do
  let poem = [ "Three Types for the Lisp-kings under the parentheses,"
             , "Seven for the Web-lords in their halls of XML,"
             , "Nine for C Developers doomed to segfault,"
             , "One for the Dark Lord on his dark throne"
             , "In the Land of Haskell where the Monads lie."
             , "One Type to rule them all, One Type to find them,"
             , "One Type to bring them all and in the Lambda >>= them"
             , "In the Land of Haskell where the Monads lie."
             ]
  putStrLn (show (count 101 (poem >>= \x -> map (ord . \x -> chr (ord x + 4)) x)))
