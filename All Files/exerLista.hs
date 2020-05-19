doubleAll :: [Int] -> [Int]
doubleAll lista = [x*2 | x<-lista]

doubleAll2 :: [Int] -> [Int]
doubleAll2 [] = []
doubleAll2 (x:xs) = x*2 : doubleAll2 xs

divisors :: Int -> [Int]
divisors n = [x | x <- [1..n], n `mod` x == 0]

isPrime :: Int -> Bool
isPrime n = if (length (divisors n) == 2) then True else False

listPrime :: [Int] -> [Bool]
listPrime lista = [isPrime x | x <- lista]

countElem :: [Int] -> Int
countElem [] = 0
countElem (x:xs) = 1+countElem xs

countElem2 :: [Int] -> [Int]
countElem2 lista = sum [1 | x <- lista]

maior :: [Int] -> Int
maior [x] = x
maior (x:y:cauda) 
			| x>y = maior (x:cauda)
			| otherwise = maior (y:cauda)
	
firstList :: Int -> [t] -> [t]
firstList 0 _ = []
firstList _ [] = []
firstList n (x:xs) = x : firstList (n-1) xs


