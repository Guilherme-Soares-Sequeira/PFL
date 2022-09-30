nub :: Eq a => [a] -> [a]
nub [] = []
nub (element:rest) = element : nub [x | x <- rest, x /= element]