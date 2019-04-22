module Chapter6.TupleExperiment where

a = divMod 10 (-3) == (div 10 (-3), mod 10 (-3))
b = quotRem 10 (-3) == (quot 10 (-3), rem 10 (-3))

checkDivMod :: (Integral a) => a -> a -> Bool
checkDivMod x y =
  d * y + m == x
  where
    (d, m) = divMod x y

checkQuotRem :: (Integral a) => a -> a -> Bool
checkQuotRem x y =
  q * y + r == x
  where
    (q, r) = quotRem x y

divideThenAdd :: (Num a, Fractional a) => a -> a -> a
divideThenAdd x y = (x / y) + 1


subtractThenAdd :: Num a => a -> a -> a
subtractThenAdd x y = (x - y) + 1




 
