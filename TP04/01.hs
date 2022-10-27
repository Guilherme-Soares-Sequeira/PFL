import Tree

sumArv :: Num a => Arv a -> a
sumArv Vazia = 0
sumArv (No x left right) = x + sumArv left + sumArv right