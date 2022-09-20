-- a
mylast :: [a] -> a
mylast x = head (drop (length x - 1) x)

mylast' :: [a] -> a
mylast' x = head (reverse x)

-- b

myinit :: [a] -> [a]
myinit x = take (length x - 1) x

myinit' :: [a] -> [a]
myinit' x = reverse (drop 1 (reverse x))
