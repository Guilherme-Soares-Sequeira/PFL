curta :: [a] -> Bool
curta' :: [a] -> Bool

-- a

curta lista = if (length lista < 3) then True
              else False

-- b

curta' [] = True
curta' [_] = True
curta' [_, _] = True
curta' _ = False