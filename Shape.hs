-- -*- compile-command: "ghc -Wall -Werror Shape.hs"; eval: (flycheck-mode) -*-

module Shape where

--main :: IO ()
-- main = print (area(Polygon ((0, 0):(10, 0):(0, 10):[])),
--               area(Triangle 10 (sqrt 200) 10),
--               area(Polygon ((0, 0):(10, 0):(10, 10):(0, 10):[])),
--               area(Polygon ((0, 0):(-10, 0):(-10, -10):(0, -10):[])),
--              area(Ellipse 11.1 22.3), area(Triangle 2 2 3))

data Shape = Rectangle Side Side
            | Ellipse Radius Radius
            | Triangle Side Side Side
            | Polygon [Vertex]
   deriving Show

type Side = Float
type Radius = Float
type Vertex = (Float, Float)
type Area = Float

distance :: Vertex -> Vertex -> Side
distance (x1, y1) (x2, y2) = sqrt((x1 - x2)^(2::Int) + (y1 - y2)^(2::Int))

area :: Shape -> Area

area (Rectangle a b) = a * b

area (Ellipse r1 r2) = pi * r1 * r2

-- area (Triangle a b c) = sqrt(p * (p - a) * (p - b) * (p -c))
--   where p = (a + b + c) / 2
area (Triangle a b c) =
  let p = (a + b + c) / 2
  in sqrt(p * (p - a) * (p - b) * (p -c))
        
-- area (Polygon(v1:v2:v3:vs)) = triArea v1 v2 v3 + area (Polygon(v1:v3:vs))
--   where triArea :: Vertex -> Vertex -> Vertex -> Area
--         triArea x y z = area (Triangle (distance x y) (distance y z) (distance z x))
area (Polygon(v1:v2:v3:vs)) =
  let triArea :: Vertex -> Vertex -> Vertex -> Area
      triArea x y z = area (Triangle (distance x y) (distance y z) (distance z x))
  in triArea v1 v2 v3 + area (Polygon(v1:v3:vs))
area (Polygon _) = 0
