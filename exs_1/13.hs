safetail :: [a] -> [a]
safetail list | null list = []
safetail list = tail list

safetail' :: [a] -> [a]
safetail' list = if null list then []
  else tail list

safetail'' :: [a] -> [a]
safetail'' (_ : rest) = rest
safetail'' _ = []