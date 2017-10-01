module Lib (
    someFunc
  , fib
  , f
) where

import           Debug.Trace

someFunc :: IO ()
someFunc = putStrLn    "Hello world"

-- 0, 1, 2, 3, 4, 5, 6, 07, 08, 09...
-- 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946...
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

f :: Int -> String
f n = trace ("function [f] called with [" ++ show n ++ "]!!!") $ show $ fib n
