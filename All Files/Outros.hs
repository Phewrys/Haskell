-- && , || , not , /= , ==
-- ^ , div , mod , abs , negate

-- square, quadrado de um inteiro
square :: Int -> Int
square n = n*n

--double, dobro de um inteiro
double :: Int -> Int
double n = 2*n

-- fatorial

-- areas

-- maximo
maxxy :: Int -> Int -> Int
maxxy x y
  |x >= y = x
  |otherwise = y
 
maxx :: Int -> Int -> Int
maxx x y = if x >= y then x else y

-- minimo
minxy :: Int -> Int -> Int
minxy x y
  |x <= y = x
  |otherwise = y
 
minx :: Int -> Int -> Int
minx x y = if x <= y then x else y


-- fatorial
fact :: Int -> Int
fact n
  | n == 0 = 1
  | otherwise = n * fact (n-1)

fac :: Int -> Int
fac n = if n == 0 then 1 else n * fac (n-1)

fat :: Int -> Int
fat 0 = 1
fat n = n * fat (n-1)


-- finonacci



lista :: [Int]
lista = [1,2,3,4,5]
-- 0:lista 	-> 	[0,1,2,3,4,5]

--doubro dos elementos de uma lista
doubleL :: [Int] -> [Int]
doubleL lista = [2*x|x<-lista]


-- concat
concatx :: [[x]] -> [x]
concatx [] = []
concatx (x:xs) = x ++ concatx xs

-- length
tam :: [Int] -> Int --total de elementos
tam [] = 0
tam (x:xs) = 1 + tam xs

sumx :: [Int] -> Int --soma de todos elementos
sumx [] = 0
sumx (x:xs) = x + sumx xs

productx :: [Int] -> Int --multiplicação de todos elementos
productx [] = 1
productx (x:xs) = x * productx xs

-- head
headx :: [Int] -> Int
headx (x:xs) = x

-- last
-- tail
tailx :: [Int] -> [Int]
tailx (x:xs) = xs

-- init
-- replicate
-- take
-- drop
-- spliAt

-- reverse
inverte :: [Int] -> [Int]
inverte [] = []
inverte (x:xs) = (inverte xs)++[x]

-- sip
-- unsip

squares :: [Int] -> [Int]
squares xs = [x*x| x<-xs]

squaresx :: [Int] -> [Int]
squaresx [] = []
squaresx (x:xs) = x * x : squaresx xs



-- caser :: Int -> Char
-- caser n = case (mod n 2 == 0) of
--           	True -> "Par"
--           	False -> "Impar"


-- squarex :: Int -> Int
-- squarex n = x
--         	where
--           	x = n*n


-- map : aplica em todos os elementos.
-- recebe uma Função e uma Lista, e aplica essa Função em todos os elementos da Lista. produzindo uma nova lista.
-- Ex.: map (+1) lista
-- resp: [2,3,4,5,6]

-- filter : seleciona os elementos de acordo com a função.

-- Ex.: filter (>3) lista
-- resp: [4,5]

-- folder : aplica a função entre os elementos.


divisors :: Int -> [Int]
divisors n = [x | x <- [1..n], n `mod` x == 0]

isPrime :: Int -> Bool
isPrime n = if (length (divisors n) == 2) then True else False

is_prime :: Int -> Bool
is_prime 1 = False
is_prime 2 = True
is_prime n | (length [x | x<-[2..n-1], mod n x == 0]) > 0 = False
       	| otherwise = True


lista :: [Int]
lista = [1,2,3,4,5]

dobro :: [Int] -> [Int]
dobro lista = [x*2|x<-lista]

divisors :: Int -> [Int]
divisors n = [x |x<-[1..n], mod n x == 0]

isprime :: Int -> Bool
isprime n = if (length (divisors n) == 2) then True else False

listPrime :: [Int] -> [Bool]
listPrime lista = [isprime x|x<-lista]

-- filterx :: [Int] -> [Int]
-- filterx lista = [x |x<-lista, isprime]

countElem :: [a] -> Int
countElem [] = 0
countElem (x:xs) = 1 + countElem xs

menor :: [Int] -> Int
menor [x] = x
menor (x:y:cauda)
   | x<y = menor (x:cauda)
   | otherwise = menor (y:cauda)

firstList :: Int -> [t] -> [t]
firstList 0 _ = []
firstList _ [] = []
firstList n (x:xs) = x : firstList (n-1) xs

----------------------------------------------------------------------

quad :: [Int] -> [Int]
quad lista = [x^2|x<-lista]

soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

somaquad :: [Int] -> Int
somaquad lista = soma (quad lista)





penult :: [Int] -> Int
penult [] = 0
penult [x] = x-1
penult (x:xs) = penult xs

inverte :: [Int] -> [Int]
inverte [] = []
inverte (x:xs) = (inverte xs) ++ [x]

palindromo :: [Int] -> Bool
palindromo [x] = True
palindromo lista = if (inverte lista == lista) then True else False


maior :: [Int] -> Int -> [Int]
maior lista n = [x |x<-lista, x>n]

tsumElem :: [Int] -> Int
tsumElem [] = 0
tsumElem (x:xs) = 1+tsumElem xs
 
totalLarge :: [Int] -> Int -> Int
totalLarge lista n = tsumElem (maior lista n)









square :: [Int] -> [Int]
square lista = map (^2) lista




ultimo :: [Int] -> Int
ultimo [] = 0
ultimo [x] = x
ultimo (x:xs) = ultimo xs

reversex :: [Int] -> [Int]
reversex (x:xs) = (reverse xs) ++ [x]
