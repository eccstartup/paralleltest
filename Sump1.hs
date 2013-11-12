module Main 
       (
         main
       ) where

import Data.Ratio
import Data.List
import Control.Parallel.Strategies

main = do
  let alls = runEval $ do
        a <- rpar (foldl' (+) 0 [1%n | n <- [1..20000]])
        b <- rpar (foldl' (+) 0 [1%n | n <- [20001..36000]])
        c <- rpar (foldl' (+) 0 [1%n | n <- [36001..52000]])
        d <- rpar (foldl' (+) 0 [1%n | n <- [52001..68000]])
        e <- rpar (foldl' (+) 0 [1%n | n <- [68001..84000]])
        f <- rpar (foldl' (+) 0 [1%n | n <- [84001..100000]])
        rseq a
        rseq b
        rseq c
        rseq d
        rseq e
        rseq f
        return [a, b, c, d, e, f]
  print $ sum alls