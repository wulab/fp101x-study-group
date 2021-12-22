{-
type Church = (a -> a) -> a -> a

zero    = \s z -> z
one     = \s z -> s z
two     = \s z -> s (s z)
        = \s z -> (s . s) z
        = \s -> s . s

c2s x = x ('*':) ""
c2s two = (\s z -> s (s z)) ('*':) ""
        = ('*':) ('*':"")
        = '*':"*"
        = "**"


Deriving Addition
x' = c2i x
y' = c2i y

x' + y' = c2i (add x y)
x' + y' = c2i x + c2i y
        = x (+1) 0 + c2i y
        = x (+1) (c2i y)
        = x (+1) (y (+1) 0)
        = (\s x -> x s (y s z)) (+1) 0
        = (add x y) (+1) 0
        = c2i (add x y)

add x y = \s x -> xs (y s z)

Multiplication
2 x 3 = 2 + 2 + 2 = 6

two = \s -> s . s
three   = \f -> f . f . f
six     = \s -> (s . s) . (s . s) . (s . s)

mul x y = \s z -> x (y s) z
        = \s z -> x . y

type Church a = (a -> a) -> a -> a

zero :: Church a
zero = \s z -> z

one :: Church a
one = \s z -> z s

two :: Church a
two = \s z -> z (s z)

three :: Church a
three = \s z -> z (s (s z))

four :: Church a
four = \s z -> z (s (s (s z)))

succ :: Church a -> Church a
succ n f = f . n f

add :: Church a -> Church a -> Church a
add x y = \s z -> x s (y s z)

mult :: Church a -> Church a -> Church a
mult x y = x . y

exp :: Church a -> (Church a -> Church a) -> Church a
exp x y = y x
-}