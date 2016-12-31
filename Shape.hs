-- -*- compile-command: "ghc -Wall -Werror Shape.hs"; eval: (flycheck-mode) -*-

module Shape where

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

area (Triangle a b c) =
  let p = (a + b + c) / 2
  in sqrt(p * (p - a) * (p - b) * (p -c))
        
area (Polygon(v1:v2:v3:vs)) =
  let triArea :: Vertex -> Vertex -> Vertex -> Area
      triArea x y z = area (Triangle (distance x y) (distance y z) (distance z x))
  in triArea v1 v2 v3 + area (Polygon(v1:v3:vs))
area (Polygon _) = 0

polygonArea :: Shape -> Area

polygonArea (Polygon (v1:v2:vs)) =
  let trapezoidArea :: Vertex -> Vertex -> Area
      trapezoidArea (x1, y1) (x2, y2) =
        let h = x2 - x1
            a = y1
            b = y2
        in (a + b) * h / 2
  in trapezoidArea v1 v2 + polygonArea(Polygon (v2:vs))
polygonArea (Polygon _) = 0

polygonArea _ = 0


