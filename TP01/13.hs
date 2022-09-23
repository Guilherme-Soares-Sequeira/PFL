safetail :: [a] -> [a]
safetail' :: [a] -> [a]
safetail'' :: [a] -> [a]

safetail list = if (null list) then []
  else tail list

safetail' list
  | null list = []
  | otherwise = tail list

safetail'' [] = []
safetail'' list = tail list