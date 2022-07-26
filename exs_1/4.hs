last' :: [a] -> a
last' list = head (reverse list)

last'' :: [a] -> a
last'' list = head (drop (length list - 1) list)

--

init' :: [a] -> [a]
init' list = take (length list - 1) list

init'' :: [a] -> [a]
init'' list = reverse (tail (reverse list))