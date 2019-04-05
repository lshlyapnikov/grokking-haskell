import Test.Hspec
import ShapeTest (shapeSpec)

main :: IO ()
main = hspec $ do
  shapeSpec

