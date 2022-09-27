intersperse :: a -> [a] -> [a]
intersperse sep list = concat ([[head list]] ++ [sep : [val] | val <- tail list])