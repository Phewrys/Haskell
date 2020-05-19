-- 1:
inverte :: String -> String
inverte = foldr (\x y -> y++[x]) []

-- 2:
descricao :: Char -> String
descricao x
  |x == '0' = "zero"
  |x == '1' = "um"
  |x == '2' = "dois"
  |x == '3' = "tres"
  |x == '4' = "quatro"
  |x == '5' = "cinco"
  |x == '6' = "seis"
  |x == '7' = "sete"
  |x == '8' = "oito"
  |x == '9' = "nove"

aux :: String -> String
aux [x] = descricao x
aux (x:xs) = (descricao x) ++ "-" ++ (aux xs)

palavra :: Int -> String
palavra x = aux (show x)

-- 3:
ordenada :: [Int] -> Bool
ordenada [x] = True
ordenada (x:y:xs)
  |x <= y = ordenada (y:xs)
  |otherwise = False

-- 4:
mdc :: Int -> Int -> Int
mdc a 0 = a
mdc a b = mdc b (a `mod` b)

-- 5:



-- 6:



-- 7:



-- 8:
largestN :: Int -> [Int] -> [Int]
--largestN n lista = [x*2|x<-lista, x > n]
largestN n lista = filter (>n) (map (*2) lista)


-- 9:



-- 10:



-- 11:



-- 12:



-- 13:
