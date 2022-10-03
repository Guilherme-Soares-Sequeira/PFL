-- a

merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge list [] = list
merge [] list = list
merge (x:listx) (y:listy) | x < y = x : merge listx (y:listy)
                          | otherwise = y : merge (x:listx) listy

-- b

msort :: Ord a => [a] -> [a]
msort [] = []
msort (x:[]) = [x]
msort list = 
  let (first, second) = (splitAt ((length list) `div` 2) list) in
  merge (msort first) (msort second)