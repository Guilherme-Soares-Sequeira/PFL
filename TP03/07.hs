-- a
(+++) :: [a] -> [a] -> [a]
(+++) xs ys = foldr (\x y -> x : y) ys xs


-- b
concat' ::[[a]] -> [a]
concat' listoflists = foldr (\x y -> x ++ y) [] listoflists


-- c
reverse' :: [a] -> [a]
reverse' list = foldr (\x y ->  y ++ [x]) [] list


-- d
reverse'' list = foldl (\x y ->  y : x) [] list


-- e
elem' :: Eq a => a -> [a] -> Bool
elem' x = any (x ==)