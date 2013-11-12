module Main 
       (
         main
       ) where

import Data.Ratio
import Data.List

main = print $ foldl' (+) 0 [1%n | n <- [1..100000] ]