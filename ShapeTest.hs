-- -*- compile-command: "ghc -Wall -Werror ShapeTest.hs"; eval: (flycheck-mode) -*-

import Test.Hspec
--import Test.QuickCheck
--import Control.Exception (evaluate)
import Shape

main :: IO ()
main = hspec $ do
  describe "Shape area" $ do
    it "Polygon/Tiangle" $ do
      area(Polygon ((0, 0):(10, 0):(0, 10):[])) `shouldBe` 50
    it "Triangle" $ do
      area(Triangle 10 (sqrt 200) 10) `shouldBe` 50
    it "Polygon/Square" $ do 
      area(Polygon ((0, 0):(10, 0):(10, 10):(0, 10):[])) `shouldBe` 100
    it "Rectangle" $ do
      area(Rectangle 10 10) `shouldBe` 100
    it "Polygon/Square negative coordinates" $ do
      area(Polygon ((0, 0):(-10, 0):(-10, -10):(0, -10):[])) `shouldBe` 100
    it "Ellipse" $ do
      area(Ellipse 11.1 22.3) `shouldBe` pi * 11.1 * 22.3

