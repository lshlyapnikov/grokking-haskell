module ShapeTest (shapeSpec) where

import Test.Hspec
--import Test.QuickCheck
--import Control.Exception (evaluate)
import Shape

shapeSpec :: Spec
shapeSpec =  do
  describe "Shape area" $ do
    it "Polygon/Tiangle" $ do
      area(Polygon ((0, 0):(10, 0):(0, 10):[])) `shouldBe` 50
      area(Polygon [(0, 0), (0, 10), (5, 5)]) `shouldBe` 25
    it "Triangle" $ do
      area(Triangle 10 (sqrt 200) 10) `shouldBe` 50
    it "Polygon/Square" $ do 
      area(Polygon ((0, 0):(10, 0):(10, 10):(0, 10):[])) `shouldBe` 100
    it "Polygon/Trapezoids" $ do
      polygonArea(Polygon ((0, 0):(0, 10):(10, 10):(10, 0):[])) `shouldBe` 100
    it "Rectangle" $ do
      area(Rectangle 10 10) `shouldBe` 100
    it "Polygon/Square negative coordinates" $ do
      area(Polygon ((0, 0):(-10, 0):(-10, -10):(0, -10):[])) `shouldBe` 100
    it "Ellipse" $ do
      area(Ellipse 11.1 22.3) `shouldBe` pi * 11.1 * 22.3
    it "Bowtie polygon area" $ do
      polygonArea (Polygon [(0, 0), (0, 10), (5, 5), (10, 10), (10, 0), (5, 5), (0, 0)]) `shouldBe` 50
      


