{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE PatternSynonyms   #-}
module Debug.SimpleReflect.Prelude.Bool
  ( module X
  , pattern True, pattern False
  , (&&), (||), not
  ) where

import Prelude as X (Bool, ($))
import qualified Prelude (Bool(True,False), (&&), (||), not)

import Debug.SimpleReflect.Expr

pattern True :: Expr
pattern True <- Expr a b c d e
  where True = fromBool Prelude.True

pattern False :: Expr
pattern False <- Expr a b c d e
  where False = fromBool Prelude.False

(&&) :: Expr -> Expr -> Expr
(&&) = withReduce2 $ op InfixR 3 " && " `bOp2` (Prelude.&&)

(||) :: Expr -> Expr -> Expr
(||) = withReduce2 $ op InfixR 2 " || " `bOp2` (Prelude.||)

not :: Expr -> Expr
not = withReduce $ fun "not" `bOp` Prelude.not