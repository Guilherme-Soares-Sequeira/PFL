dotprod :: [Float] -> [Float] -> Float

dotprod a b = sum [ fst x * snd x | x <- (zip a b)]