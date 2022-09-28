-- a
insert :: Ord a => a -> [a] -> [a]
insert num [] = [num]
insert num (x:rest) | num <= x = num : (x : rest)
  | otherwise = x : (insert num rest)

-- b

isort :: Ord a => [a] -> [a]
isort [] = []
isort (x:list) = insert x (isort list)