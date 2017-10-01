module MyStr (
  toUpperAll
) where

import           Data.Char (toUpper)

toUpperAll :: String -> String
-- toUpperS []     = ""
-- toUpperS (x:xs) = toUpper x:toUpperS xs
-- HLint prefer fold than explicit recursion
toUpperAll = foldr ((:) . toUpper) ""
