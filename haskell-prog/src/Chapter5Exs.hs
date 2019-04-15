module Chapter5Exs where

-- 1. Given: (++) :: [a] -> [a] -> [a]
myConcat x = x ++ " yo"
-- myConcat :: [Char] -> [Char]

-- 2. Given: (*) :: Num a => a -> a -> a
myMult x = (x / 3) * 5
-- myMult :: Factional a => a => a

-- 3. Given: take :: Int -> [a] -> [a]
myTake x = take x "hey you"
-- myTake :: Int -> [Char]

-- 4. Given: (>) :: Ord a => a -> a -> Bool
myCom x = x > (length [1..10])
-- myCom :: Int -> Bool

-- 5. Given (<) :: Ord a => a -> a -> Bool
myAlph x = x < 'z'
-- myAlph :: Char -> Bool

--
-- 5.8
--

-- 1. c
-- 2. a
-- 3. b
-- 4. c

-- page 154
-- 1
i :: a -> a
i a = a

-- 2
c :: a -> b -> a
c a _ = a

-- 3
c'' :: b -> a -> b
c'' b _ = b

-- 4
c' :: a -> b -> b
c' _ b = b

-- 5
r :: [a] -> [a]
-- reverse, tail, etc
--r (a:as) = as
r as = loop as []
  where
    loop :: [x] -> [x] -> [x]
    loop (x:xs) acc = loop xs (x:acc)
    loop [] acc = acc

-- 6
co :: (b -> c) -> (a -> b) -> a -> c
co b2c a2b a = b2c (a2b a)

-- 7
a :: (a -> c) -> a -> a
a _ x = x

-- 8
a' :: (a -> b) -> a -> b
a' a2b x = a2b x


