module Print3Broken where

printSecond :: IO ()
printSecond = do
  putStrLn greeting

greeting :: String
greeting = "Yarrrrr"

main :: IO ()
main = do
  putStrLn greeting
  printSecond

thirdLetter :: String -> Char
thirdLetter s = s !! (3 - 1)

letterIndex :: Int -> Char
letterIndex x = str !! x
  where
    str = "Curry is awesome!"
