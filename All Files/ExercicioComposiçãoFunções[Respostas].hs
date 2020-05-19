 lista :: [Int]
lista = [1,2,3,4,5]

-- Questão 01:
dobro :: [Int] -> [Int]
dobro lista = map (*2) lista

-- Questão 02:

ehpar :: Int -> Bool
ehpar x = if (mod x 2 == 0) then True else False
    -- alternativa à função anterior    
    ehpar = \n -> mod n 2 == 0

ifpar :: [Int] -> [Int]
ifpar lista = filter ehpar lista

-- Questão 03:
impar :: [Int] -> [Int]
impar lista = filter (not.ehpar) lista

-- Questão 04:
	-- a:
        raiz = \x -> sqrt (x)
	-- b: 
		quad = \x -> x^2
	-- c: 
        par = \x -> mod x 2 == 0
	-- d: 
        impar = \x -> mod x 2 == 1
	-- e: 
		mult = \x y -> x*y
	-- f:
        maxx :: Int -> Int -> Int
        maxx x y = if x > y then x else y

        maior = \x y -> (maxx x y)

-- Questão 05:
    quadsoma :: [Int] -> Int
    quadsoma = foldr (+) 0.map (\x -> x^2).filter (\n -> n>0)
    --quadsoma lista = foldr (+) 0 (map (\x -> x^2) (filter (\n -> n > 0) lista))

-- Questão 06:
	-- a: Verifica se o elemento é positivo.
        positivo = \x -> x > 0

	-- b: Retorna o dobro do elemento.
        dobro = \x -> 2 * x

	-- c: Retorna o sucessor.
        sucessor = \x -> x + 1

	-- d: Retorna o resultado de 2 elevado a x.
        eleva = \x -> 2^x

	-- e: Retorna o quadrado de um elemento.
        quad = \x -> x ^ 2
        

-- Questão 07: (>0) (2*) (+1)
fun1 :: [Int] -> [Int]
fun1 lista = map (>0) lista

fun2 :: [Int] -> [Int]
fun2 lista = map (2*) lista

fun3 :: [Int] -> [Int]
fun3 lista = map (+1) lista

somaFuncao :: [Int] -> [Int]
somaFuncao lista = fun1 (fun2 (fun3 lista))

-- Questão 08:
-- Recebe uma lista é retorna à soma do quadrado dos números maiores que zero.
f :: [Int] -> Int
f xs = foldr(+) 0 (map(^2)(filter(>0)xs))

-- Questão 09:
	-- a:
sublist :: String -> String -> Bool
sublist [] _ = True
sublist _ [] = False
sublist (x:xs) (y:ys)
  |x == y = sublist (xs) (ys)
  |otherwise = sublist (xs) (ys)

	-- b:
subs :: String -> String -> Bool
subs [] _ = True
subs _ [] = False
subs (x:xs) (y:ys)
  |x == y = subs xs ys
  |otherwise = False
