dotprod :: [Float] -> [Float] -> Float
dotprod lista listb = sum [x * y | (x,y) <- zip lista listb ]