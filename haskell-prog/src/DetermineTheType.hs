{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

example = 1

-- (Num a) => a
-- 1
-- a). (* 9) 6 :: Num a => a
-- b). head [(0,"doge"),(1,"kitteh")] :: Num a => (a, [Char])
-- c). head [(0 :: Integer ,"doge"),(1,"kitteh")] :: (Integer, [Char])
-- d). if False then True else False :: Bool
-- e). length [1, 2, 3, 4, 5] :: Int
-- f). (length [1, 2, 3, 4]) > (length "TACOCAT") :: Bool


-- 2. w :: (Num a) => a
-- 3. Num a => a -> a
-- 4. Fractional a => a
-- 5. [Char]

functionH :: [a] -> a
functionH (x:_) = x

functionC :: Ord a => a -> a -> Bool
functionC x y =
  if (x > y) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y

