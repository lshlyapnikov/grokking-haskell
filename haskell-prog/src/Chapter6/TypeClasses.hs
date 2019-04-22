module Chapter6.TypeClasses where

data Identity a = Identity a

instance Eq a => Eq (Identity a) where
   (==) (Identity v) (Identity v') = v == v'
