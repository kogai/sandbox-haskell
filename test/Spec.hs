import           Lib
import           MyStr
import           Test.HUnit

main :: IO ()
main = do
  _ <- runTestTT $ TestList
     ["should be return fib" ~: fib 7 ~?= 13
    , "should be return fib(9) === 34" ~: fib 9 ~?= 34
    , "Should be upper strings" ~: toUpperAll "this is a pen" ~?= "THIS IS A PEN"]

  return ()
