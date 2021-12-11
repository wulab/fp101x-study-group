{- Exercise 6

The scalar product of two lists of integers xs and ys of length n is given by
the sum of the products of corresponding integers:

  sum ( (xs !! i) * (ys !! i) ) for i = 0 to n-1

Choose the correct definition of scalarproduct :: [ Int ] -> [ Int ] -> Int that
returns the scalar product of two lists.

  > scalarproduct [1, 2, 3] [4, 5, 6]
  32

-}

scalarproduct xs ys = sum [x * y | x <- xs, y <- ys]
