import Tree

-- a
maisDir :: Arv a -> a
maisDir Vazia = error "maisDir: Tree is empty!"
maisDir (No x _ Vazia) = x
maisDir (No _ _ right) = maisDir right

-- b
remover :: Ord a => a -> Arv a -> Arv a
remover x Vazia = Vazia
remover x (No y Vazia right)
  | x == y = right
remover x (No y left Vazia)
  | x == y = left
remover x (No y left right)
  | x < y = No y (remover x left) right
  | x > y = No y left (remover x right)
  | x == y = No (maisDir right) (remover (maisDir left) left) right 