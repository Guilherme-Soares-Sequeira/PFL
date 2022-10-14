-- a
maximum', minimum', maximum'', minimum'' :: Ord a => [a] -> a

maximum' = foldr1 max

minimum' = foldr1 min

maximum'' = foldl1 max

minimum'' = foldl1 min

-- b

foldr1' :: (a0 -> a0 -> a0) -> [a0] -> a0
foldr1' f [] = error "empty list"
foldr1' f xs = foldr f (last xs) (init xs)

foldl1' :: (a0 -> a0 -> a0) -> [a0] -> a0
foldl1' f [] = error "empty list"
foldl1' f (x:xs) = foldl f x xs