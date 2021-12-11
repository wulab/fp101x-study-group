{- Exercise 0

Which of these expressions calculates the sum:

  1^2 + 2^2 + ... + 100^2

of the first one hundred integer squares?
-}

sum100 = sum [x^2 | x <- [1..100]]
