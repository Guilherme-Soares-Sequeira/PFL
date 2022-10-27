import Tree

nivel :: Int -> Arv a -> [a]
nivel _ Vazia = []
nivel 0 (No x _ _) = [x]
nivel x (No _ left right) = nivel (x-1) left ++ nivel (x-1) right