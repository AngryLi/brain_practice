module Main2 where

crack = do x <- ['1'..'9'] ; y <- ['1'..'9'] ; z <- ['1'..'9'] ;
			let { password = [x, y, z] } ;
			if attempt password
				then return (password, True)
				else return (password, False)

attempt pw = if pw == "321" then True else False
