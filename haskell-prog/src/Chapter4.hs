module Chapter4
  ( Mood(Blah, Woot)
  , changeMood
  , Pet(Dog, Cat)
  ) where

data Mood
  = Blah
  | Woot
  deriving (Show)

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _    = Blah

awesome = ["Papuchon", "curry", ":)"]

also = ["Quake", "The Simons"]

allAwesome = [awesome, also]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == (reverse x)

myAbs :: Integer -> Integer
myAbs x =
  if x < 0
    then (-x)
    else x

x = (+)

f xs = w `x` 1
  where
    w = length xs

myId :: a -> a
myId = \x -> x

myFst (a, b) = a

type Name = String

data Pet
  = Cat
  | Dog Name

instance Show Pet where
  show Cat        = "Cat, just a cat"
  show (Dog name) = "Dog has a name: " ++ name
