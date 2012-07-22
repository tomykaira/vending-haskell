module VendingMachine where

data Money = Ten | Fifty | Hundred | FiveHundred | Thousand
           deriving Show

{-| function 'insert'

>>> insert [] Ten
[Ten]
>>> insert [Ten] Hundred
[Hundred,Ten]
-}

insert l m = m:l
