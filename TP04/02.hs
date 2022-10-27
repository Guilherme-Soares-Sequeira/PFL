import Tree

listarDecrescente :: Num a => Arv a -> [a]
listarDecrescente Vazia = []
listarDecrescente (No x left right) = listarDecrescente right ++ [x] ++ listarDecrescente left