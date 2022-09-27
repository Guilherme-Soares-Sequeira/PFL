-- a

myand :: [Bool] -> Bool
myand [] = True
myand (x:list) | x == True = myand list
  | otherwise = False

-- b

myor :: [Bool] -> Bool
myor [] = False
myor (x:list) | x == True = True 
  | otherwise = myor list

-- c

myconcat :: [[a]] -> [a]
myconcat lists = [elem | list <- lists, elem <- list] 

-- d

myreplicate :: Int -> a -> [a]
myreplicate 1 elem = [elem]
myreplicate n elem = elem : myreplicate (n-1) elem 

-- e

(!!!) :: [a] -> Int -> a
(!!!) [] n = error "Tried to index a null list"
(!!!) list 0 = head list
(!!!) (_:rest) n = rest !!! (n-1)

-- f

myelem :: Eq a => a -> [a] -> Bool
myelem val [] = False
myelem val (x:rest) | x == val = True
  | otherwise = myelem val rest