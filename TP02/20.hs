transpose :: [[a]] -> [[a]]
transpose [] = []
transpose listOfLists = [[(listOfLists !! rowNum) !! colNum | colNum <- [0..newNumOfElems-1]] | rowNum <- [0..newNumOfLists-1]]
  where newNumOfLists = length (listOfLists !! 0)
        newNumOfElems = length listOfLists