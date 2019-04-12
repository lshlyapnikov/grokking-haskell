module Main where

import           Chapter4 (Mood (Blah, Woot), Pet (Cat, Dog), changeMood)

-- import           Lib

main :: IO ()
main = do
  print Woot
  print Blah
  print (changeMood Woot)
  print Cat
  print (Dog "Frodo")
