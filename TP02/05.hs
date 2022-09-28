-- a
minimum' :: Ord a => [a] -> a
minimum' [] = error "Tried to index a null list"
minimum' (elem:rest) | null rest = elem
  | elem < minimum' rest = elem
  | otherwise = minimum' rest

-- b
delete :: Eq a => a -> [a] -> [a]
delete num [] = []
delete num (elem:rest) | elem == num = rest
  | otherwise = elem : (delete num rest)

-- c
ssort :: Ord a => [a] -> [a]
ssort [] = []
ssort list = minimum' list : ssort (delete (minimum' list) list)