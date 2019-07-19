module Chapter7.VarietyPack where

k (x, y) = x

k1 = k ((4 - 1), 10)

k2 = k ("three", (1 + 2))

k3 = k (3, True)

-- a). k :: (x, y) -> x
-- b). k2 :: [Char]
-- c). k3
f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))

pal' xs =
  case y of
    True  -> "yes"
    False -> "no"
  where
    y :: Bool
    y = xs == reverse xs
