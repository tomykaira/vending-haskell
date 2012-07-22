module VendingMachine where

import Control.Monad.State

data Money = Ten | Fifty | Hundred | FiveHundred | Thousand
           deriving Show

type MoneyStack = [Money]

moneyToInteger :: Money -> Integer
moneyToInteger Ten         = 10
moneyToInteger Fifty       = 50
moneyToInteger Hundred     = 100
moneyToInteger FiveHundred = 500
moneyToInteger Thousand    = 1000

{-| function 'insert'

>>> runState (insert Ten) []
((),[Ten])
>>> runState (insert Ten >> insert Hundred) []
((),[Hundred,Ten])
-}

insert :: Money -> State MoneyStack ()
insert m = state $ \xs -> ((), m:xs)

{-| function 'sumMoney'

>>> sumMoney [Ten]
10
-}

sumMoney :: [Money] -> Integer
sumMoney = foldl (\s m -> s + moneyToInteger m) 0

