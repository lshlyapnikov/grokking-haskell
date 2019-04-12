module Chapter3 where

my_reverse :: [a] -> [a]
my_reverse as = loop as []
  where
    loop :: [a] -> [a] -> [a]
    loop [] acc = acc
    loop (h:ts) acc = loop ts (h:acc)

rvrs :: String    
rvrs = (substr s 9 7) ++ (substr  s 5 4) ++ (substr s 0 5)
  where
    s = "Carry is awesome"
    substr :: String -> Int -> Int -> String
    substr str startIndx len = take len (drop startIndx str)
