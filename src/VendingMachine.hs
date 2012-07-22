module VendingMachine where

data Money = Ten | Fifty | Hundred | FiveHundred | Thousand
           deriving Show

moneyToInteger :: Money -> Integer
moneyToInteger Ten         = 10
moneyToInteger Fifty       = 50
moneyToInteger Hundred     = 100
moneyToInteger FiveHundred = 500
moneyToInteger Thousand    = 1000

{-| function 'insert'

>>> insert [] Ten
[Ten]
>>> insert [Ten] Hundred
[Hundred,Ten]
-}

insert :: [Money] -> Money -> [Money]
insert l m = m:l

{-| function 'sumMoney'

>>> sumMoney [Ten]
10
-}

sumMoney :: [Money] -> Integer
sumMoney = foldl (\s m -> s + moneyToInteger m) 0
