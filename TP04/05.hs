import Tree

mapArv :: (a -> b) -> Arv a -> Arv b
mapArv f Vazia = Vazia
mapArv f (No x left right) = No (f x) (mapArv f left) (mapArv f right)