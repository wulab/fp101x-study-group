-- Using the following definition, show how init [1, 2, 3] is evaluated.

init :: [a] -> [a]
init [_] = []
init (x:xs) = x : init xs

init [1,2,3]
= { applying init }
1 : init [2,3]
= { applying init }
1 : 2 : init [3]
= { applying init }
1 : 2 : []
= { list notation }
[1,2]