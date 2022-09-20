metades :: [a] -> ([a], [a])
metades xs = (take half xs, drop half xs)
  where half = (length xs) `div` 2 