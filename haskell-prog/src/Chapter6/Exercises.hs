module Chapter6.Exercises where

import Data.List(sort)

data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn a1) (TisAn a2) = a1 == a2

data TwoIntegers =
  Two Integer
      Integer

instance Eq TwoIntegers where
  (==) (Two a1 b1) (Two a2 b2) = a1 == a2 && b1 == b2

data StringOrInt
  = TisAnInt Int | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt a) (TisAnInt b) = a == b
  (==) (TisAString a) (TisAString b) = a == b
  (==) _ _ = False

data Pair a =
  Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair a1 b1) (Pair a2 b2) = a1 == a2 && b1 == b2

-- 5
data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a1 b1) (Tuple a2 b2) = a1 == a2 && b1 == b2

-- 6
data Which a = ThisOne a | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne a1) (ThisOne a2) = a1 == a2
  (==) (ThisOne a1) (ThatOne a2) = a1 == a2
  (==) _ _ = False

-- 7
data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a1) (Hello a2) = a1 == a2
  (==) (Goodbye b1) (Goodbye b2) = b1 == b2
  (==) _ _ = False

-- typecheck

data Person = Person Bool deriving Show
printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

data Mood = Blah | Woot deriving (Show, Eq)
settleDown x = if x == Woot then Blah else x

type Subject = String
type Verb = String
type Object = String
data Sentence = Sentence Subject Verb Object deriving (Eq, Show)
s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

phew = Papu (Rocks "chases") (Yeah True)

truth = Papu (Rocks "chomskydoz") (Yeah True)

equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'

-- match the types
i :: Num a => a
-- i :: a
i = 1

-- f :: Float
-- f :: Fractional a => a
f :: RealFrac a => a
f = 1.0

-- freud :: a -> a
freud :: Ord a => a -> a
freud x = x

-- freud' :: a -> a
freud' :: Int -> Int
freud' x = x

myX = 1 :: Int
sigmund :: Int -> Int
-- signund :: a -> a
sigmund x = myX

sigmund' :: Int -> Int
-- sigmund' :: Num a => a -> a
sigmund' x = myX

-- jung :: Ord a => [a] -> a
jung :: [Int] -> Int
jung xs = head (sort xs)

-- young :: [Char] -> Char
young :: Ord a => [a] -> a
young xs = head (sort xs)

mySort :: [Char] -> [Char]
mySort = sort
signifier :: [Char] -> Char
-- signifier :: Ord a => [a] -> a
signifier xs = head (mySort xs)

-- type-knwon-do two

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk a2b a b = (a2b a) == b

arith :: Num b => (a -> b) -> Integer -> a -> b 
arith a2b i a = a2b a + fromInteger i
