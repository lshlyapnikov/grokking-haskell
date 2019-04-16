module Chapter5.Chapter5 where

aaa :: Int -> Int -> Int
aaa x y = x + y

bbb :: Int -> Int -> Int -> Int
bbb a b c = a + b + c

-- (a, c) (b, d) (c, b) (d, a) (e, e)
nonsense :: Bool -> Integer
nonsense True  = 805
nonsense False = 31337

curriedFunction :: Integer -> Bool -> Integer
curriedFunction i b = i + (nonsense b)

uncurriedFunction :: (Integer, Bool) -> Integer
uncurriedFunction (i, b) = i + (nonsense b)

anonymous :: Integer -> Bool -> Integer
anonymous = \i b -> i + (nonsense b)

anonNested :: Integer -> Bool -> Integer
anonNested = \i -> \b -> i + (nonsense b)

ff1 :: Num a => a -> a
ff1 a = 1 + a

ff2 :: a -> a -> a
ff2 a1 a2 = a1

ff3 :: a -> b -> b
ff3 a b = b