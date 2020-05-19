lista :: [Int]
lista = [1,2,3,4,5]

-- 1: Defina uma função para dar a soma dos quadrados dos números inteiros positivos de uma lista de inteiros.
squareList :: [Int] -> [Int]  --RETORNA UMA LISTA COM OS NUMEROS AO QUADRADO.
squareList x = [a^2|a<-x]

sumElem :: [Int] -> Int 	--SOMA OS ELEMENTOS DA LISTA.
sumElem [] = 0
sumElem (x:xs) = x+sumElem xs

sumList :: [Int] -> Int   	--RETORNA A SOMA DOS ELEMENTOS AO QUADRADO.
sumList lista = sumElem (squareList lista)

-- 2: Defina uma função em Haskell para retornar o penúltimo elemento de uma lista.
penult :: [Int] -> Int
penult [] = 0
penult [x] = x-1
penult (x:xs) = penult xs   -- RETORNA O PENULTIMO ELEMENTO DA LISTA.

--3: Defina uma função em Haskell do tipo (Eq a) => [a] -> Bool para dizer se uma lista é um palíndromo (OBS: Uma lista é um palíndromo quando é a mesma ao ser lida da cabeça para cauda ou da cauda para a cabeça).
--palindrome :: Eq a => [a] -> Bool
treverse :: [Int] -> [Int]
treverse [] = []
treverse (x:xs) = treverse xs ++ [x]

palidrome :: [Int] -> Bool
palidrome [] = True
palidrome lista = if (lista == treverse (lista)) then True else False

-- 4: Defina uma função que dada uma lista de inteiros e um número n, retorne o total de elementos de valor superior a n.
--totalLarge :: [Int] -> Int -> Int
maior :: [Int] -> Int -> [Int]
maior lista n = [x |x<-lista, x>n]   --RETORNA UMA LISTA COM OS ELEMENTOS MAIORES QUE n.

tsumElem :: [Int] -> Int
tsumElem [] = 0
tsumElem (x:xs) = 1+tsumElem xs   --SOMA OS ELEMENTOS DA LISTA.
 
totalLarge :: [Int] -> Int -> Int
totalLarge lista n = tsumElem (maior lista n)   --RETORNA UM INTEIRO COM A SOMA DOS ELEMENTOS MAIORES QUE n.


-- 5: Escreva uma função que receba duas listas e retorne outra lista com os elementos das listas originais intercalados.
lista1 :: [Int]
lista1 = [x |x<-[0,2..10]]   --  CRIA UMA LISTA COM ELEMENTOS PARES.

lista2 :: [Int]
lista2 = [x |x<-[1,3..10]]   -- CRIA UMA LISTA COM ELEMENTOS IMPARES.

concatInter :: [Int] -> [Int] -> [Int]
concatInter x y = x++y
--FALTA INTERCALAR OS ELEMENTOS.

nome = putStrLn "TIAGO ALVES DE FARIAS"

fatorial :: Int -> Int
fatorial n = if n > 0 then n * fatorial (n-1) else 1

size :: [Int] -> Int
size [] = 0
size (x:xs) = 1+size xs

cabeca :: [Int] -> Int
cabeca (x:xs) = x

cauda :: [Int] -> [Int]
cauda (x:xs) = xs

tlast :: [Int] -> Int
tlast = cabeca.treverse

tinit :: [Int] -> [Int]
tinit = treverse.cauda.treverse

fatores n = [i |i<-[1..n], n `mod` i == 0]

conta :: [Int] -> [Int]
conta [] = []
conta (a:xs) = a*2 : conta xs
--MUITO IMPORTANTE ESSAS DUAS FUNÇÕES
conta :: [Int] -> [Int]
conta [] = []
conta lista = [a*2|a<-lista]

rsumElem :: [Int] -> Int
rsumElem [] = 0
rsumElem (x:xs) = x+rsumElem xs
