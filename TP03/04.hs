import Data.List

isort' :: Ord a => [a] -> [a]
isort' xs = foldr (\x y -> (insert x y)) [] xs
