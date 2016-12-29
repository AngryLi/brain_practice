module Factorial where
	reverse2 [] = []
	reverse2 (h:t) = reverse2 t ++ [h]