{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import Prelude (($), mapM_, repeat, sin, IO, print, foldl,foldr, fmap,head, length, reverse, sum, succ, product, (++))
import Data.List (sort)
import Debug.SimpleReflect

main :: IO ()
main = do
  print (2 + 15 :: Expr)
  print (49 * 100 :: Expr)
  print (1892 - 1472 :: Expr)
  print (5 / 2 :: Expr)
  print ((50 * 100) - 4999 :: Expr)
  print (50 * 100 - 4999 :: Expr)
  print (50 * (100 - 4999) :: Expr)

  print (True && False)
  print (True && True)
  print (False || True)
  print (not False)
  print (not (True && True))