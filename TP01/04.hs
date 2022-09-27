-- a
mylast :: [a] -> a
mylast x = head (drop (length x - 1) x)

mylast' :: [a] -> a
mylast' x = head (reverse x)

mylast'' :: [a] -> a
mylast'' [] = error "Tried to index empty list"
mylast'' (x:rest) | null rest = x
  | otherwise = mylast rest

-- b

myinit :: [a] -> [a]
myinit x = take (length x - 1) x

myinit' :: [a] -> [a]
myinit' x = reverse (drop 1 (reverse x))
