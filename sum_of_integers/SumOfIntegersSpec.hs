import qualified SumOfIntegers
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
  describe "SumOfIntegers.greatestContiguousSum" $ do
  	it "returns the correct value for the case of the entire list" $
  		SumOfIntegers.greatestContiguousSum [1, 2, 3, 4, 5] `shouldBe` 15
  	it "returns the correct value for a case that has a negative number, but still whole list" $
  		SumOfIntegers.greatestContiguousSum [1, 2, 3, -1, 5] `shouldBe` 10
  	it "returns the correct value for a more complicated case" $
  		SumOfIntegers.greatestContiguousSum [10, -6, 4, -12, 3, 1] `shouldBe` 10