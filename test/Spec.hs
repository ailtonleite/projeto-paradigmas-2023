import           App
import           Test.Tasty
import           Test.Tasty.HUnit
import           Data.Char        (isUpper)


main :: IO ()
main = do
  defaultMain tests

tests :: TestTree
tests =
  testGroup
     "app-projeto"
     [ test01
     ]

-- Test Atividade 04

test01 =
  testGroup
    "next"
    [ testCase "soma test" (assertEqual "" 2 (soma 1 1))
    ]

