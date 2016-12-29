module Main2 where 
data Triplet a = Trio a a a deriving (Show)

fstLetter::String->String
fstLetter ""="Empty String!"
fstLetter all@(x:_)="The first letter of " ++ all ++ " is " ++ [x]
