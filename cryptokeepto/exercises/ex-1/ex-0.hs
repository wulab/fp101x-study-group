-- Parenthesise the following arithmetic expressions:
-- 2 ^ 3 * 4
-- 2 * 3 + 4 * 5
-- 2 + 3 * 4 ^ 5
main :: IO()
main =
  print ((2 ^ 3) * 4) >>
  print ((2 * 3) + (4 * 5)) >>
  print (2 + (3 * (4 ^ 5)))
