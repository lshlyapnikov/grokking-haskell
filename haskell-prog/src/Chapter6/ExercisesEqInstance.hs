module Chapter6.ExercisesEqInstance where

data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn a1) (TisAn a2) = a1 == a2
