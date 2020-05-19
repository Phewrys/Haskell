-- DICAS RÁPIDAS

-- Comentário em uma linha.
{- 
Comentários em mais de uma linha.
-}
/= Sinal de Diferente.
| Guarda (se).
:t expressão ou :type expressão Para verificar o Tipo. Ex: :t ‘a’ ou :type 5
O símbolo :: é lido como “é do tipo”. Ex: ‘H’ :: Char, se lê, H é do tipo Char.
++ Para concatenar duas Strings.

{-
TUPLAS
TUPLAS: É um conjunto de dados que pode ser heterogêneo (conter vários tipos).  
Tuplas são colocadas entre ().
As tuplas tem uma estrutura estática, depois que cria, não pode ser mais modificadas.
-- Tuplas
func :: (Int, Int) -> (Int, Int) -> (Int, Int)
func (a,b) (c,d) = (a+c, b+d)
Funções para extrair elementos de uma tupla.
fst (“Thiago”, 10) 	-- Primeiro elemento.
“Thiago”
snd (“Thiago”, 10)	-- Segundo elemento.
10

nomes :: (String, String, String)
nomes = ("Thiago", "Alves", "Farias")
selec_prim (x, _, _) = x	-- Para mostrar o primeiro elemento.
selec_sec (_, y, _) = y		-- Para mostrar o segundo elemento.
selec_ter (x, _, z) = z		-- Para mostrar o terceiro elemento.
-- no GHCi digite:
selec_prim nomes		-- Saíra o primeiro elemento da lista.
“Thiago”
-}

{-
chr e ord
Abra o GHCi (Terminal).


-- Importando o Módulo
:module Data.Char ou :m Data.Char

-- Entrada
chr 97
-- Saída
‘a’

-- Entrada
ord ‘c’
-- Saída
99
-}


{-
LISTAS
listas são representada por [ ].
head Retorna o primeiro elemento da lista.
tail Retorna a cauda da lista, ou, não exibe o primeiro elemento.
last Retorna o último elemento da lista.
init Retorna o último elemento da lista.
length Retorna o comprimento da lista.
reverse Inverte os elementos da lista.
10 ‘elem’ [elementos da lista] Verifica se o elemento está presente na lista.
[1..5] ou [‘a’..’j’] Selecionando intervalo de elementos em listas.
fst (8, 11) Recebe um par e retorna o primeiro elemento.
1:[2,3] Para adicionar elementos na lista. Ex.: 1:[2,3] saída [1,2,3].
zip [1,2] [3,4] Utilizado para combinar os elementos de duas listas. Ex.: [(1,3),(2,4)].
-}


-- QUESTÃO 1: Fatorial.
fat 0 = 1
fat n = n * fat (n-1)

-- QUESTÃO 2:
square :: Int -> Int
square n = n*n

-- QUESTÃO 3: Soma de 3 números e Média.
soma :: Float -> Float -> Float -> Float
soma x y z = x+y+z


media :: Float -> Float -> Float -> Float
media x y z = (x+y+z)/3

-- QUESTÃO 4: O aluno será aprovado, caso a média seja maior que 5.
prova :: Float -> Float -> Float -> String
prova x y z
  | media x y z >= 5.0 = "Aprovado"
  | otherwise = "Reprovado"

-- QUESTÃO 5: Distância entre dois pontos.
dist :: Float -> Float -> Float
dist x y = x-y


-- FÓRMULAS EXTRAS.

-- Factorial.
fat 0 = 1
fat n = n * fat (n-1)

-- Quadrado.
square :: Int -> Int
square n = n*n

-- Soma de 3 números.
soma :: Float -> Float -> Float -> Float
soma x y z = x+y+z

-- Média de 3 números.
media :: Float -> Float -> Float -> Float
media x y z = (x+y+z)/3

-- Distância entre dois pontos.
dist :: Float -> Float -> Float
dist x y = x-y

-- Area do Retangulo.
areaRetang :: Int -> Int -> Int
areaRetang x y = x*y

-- Area de um Circulo.
area :: Float -> Float
area x = pi * x ^ 2

-- Área de um Triangulo.
areaTriang :: Float -> Float -> Float
areaTriang b h = (b * h) / 2

-- Fibonacci.
fib x 0 = 1
fib x y = x * fib x (y - 1)

-- Tamanho da Lista.
sizeL [] = 0
sizeL (cabeca:cauda) = 1 + sizeL cauda

-- Impar ou Par.
imparOUpar :: Int -> String
imparOUpar x = (if x `mod` 2 == 0 then "Par" else "Impar")

imparOUpar :: Int -> String
imparOUpar x = if x `mod` 2 == 0
                		then "Par"
                		else "Impar"

-- MDC.
mdc :: Int -> Int -> Int
mdc a 0 = a
mdc a b = mdc b (a `mod` b)
