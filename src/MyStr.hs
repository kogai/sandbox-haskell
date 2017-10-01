module MyStr (
  toUpperAll
) where

import           Data.Char (toUpper)
-- import           Data.Foldable

toUpperAll :: String -> String
-- toUpperS []     = ""
-- toUpperS (x:xs) = toUpper x:toUpperS xs
-- HLint prefer fold than explicit recursion
toUpperAll = foldr ((:) . toUpper) ""
