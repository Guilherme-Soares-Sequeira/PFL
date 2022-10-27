scanl' :: (a -> a -> a) -> a -> [a] -> [a]
scanl' f base [] = [base]
scanl' f base (x:xs) = base : scanl' f (f base x) xs