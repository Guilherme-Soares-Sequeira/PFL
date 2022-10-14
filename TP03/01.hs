listComprehension :: [a] -> (a -> b) -> (a -> Bool) -> [b]
listComprehension xs f p = map f (filter p xs)