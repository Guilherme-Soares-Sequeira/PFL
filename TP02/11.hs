pitagoricos :: Integer -> [(Integer, Integer, Integer)]
pitagoricos num = [(x,y,z) | x <- [1..num], y <- [1..num], z <- [1..num], x^2 + y^2 == z^2]