module Chapter7.GrabBag where

-- a)
mThA x y z = x * y * z
-- b)
mThB x y = \z -> x * y * z
-- c)
mThC x = \y -> \z -> x * y * z
-- d)
mThD = \x -> \y -> \z -> x * y * z

addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where f = \n -> n + 1

-- addFive x y = (if x > y then y else x) + 5
addFive = \x -> \y -> (if x > y then y else x) + 5

-- mflip f = \x -> \y -> f y x
mflip f x y = f y x

isItTwo :: Integer -> Bool
isItTwo 2 = True