lista :: [Int]
lista = [1,2,3,4,5]

-- 1: Crie uma função que recebe uma lista de inteiros e retorna uma outra lista com o seus elementos ao dobro.
doubleAll :: [Int] -> [Int]
doubleAll [] = []
doubleAll (a:x) = 2*a:doubleAll x
--main = do
  --print (doubleAll lista)

dobro :: [Int] -> [Int]
dobro x = [a*2|a<-x]
--main = do
  --print(dobro lista)

double :: [Int]
double = [2*a|a<-lista]
--main = do
  --print (double)


-- 2: Defina uma função denominada divisores que recebe um inteiro retorna uma lista com seus divisores.
divisors :: Int -> [Int]
divisors n = [i | i<-[1..n], n `mod` i == 0]
--main = do
  --print (divisors 15)


-- 3: Defina uma função chamada é primo, que determina se um número é primo ou não.
isPrime :: Int -> Bool
isPrime n = if (divisors n) == [1,n] then True else False

--main = do
  --print (isPrime 1)

-- 4: Crie uma função que recebe uma lista de inteiros e retorne se cada elemento é primo ou não.
--listPrime :: [Int] -> [Bool]


-- 5: Crie uma função que conta quantos elementos uma lista possui não importando qual tipo da lista.
countElem :: [Int] -> Int
countElem [] = 0
countElem (cabeca:cauda) = 1 + countElem cauda
--main = do
  --print (countElem lista)

 
-- 6: Crie uma função que retorne o maior elemento de uma lista de inteiros.
maior :: [Int] -> Int
maior [x] = x
maior (x:y:resto) | x > y = maior (x: resto)
                  | otherwise = maior (y: resto)
--main = do
  --print (maior lista)
 
 
-- 7: Crie uma função que retorne uma lista com os n's primeiros elementos de uma lista.
firstList :: Int -> [Int] -> [Int]
firstList 0 _ = []
firstList _ [] = []
firstList n (a:as) = a: firstList (n-1) as
--main = do
  --print (firstList 3 lista)
