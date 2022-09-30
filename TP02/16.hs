-- a
myconcat :: [[a]] -> [a]
myconcat listOfLists = [elem | aList <- listOfLists, elem <- aList]

-- b
myreplicate :: Int -> a -> [a]
myreplicate num elem = [elem | _ <- [1..num]]

-- c
(!!!) :: [a] -> Int -> a
(!!!) [] aNum = error "Tried to index null list"
(!!!) aList aNum | length aList <= aNum = error "Index out of bounds"
  | aNum < 0 = error "Negative index"
  | otherwise = head [letter | (letter, idx) <- zip aList [0..], idx == aNum]