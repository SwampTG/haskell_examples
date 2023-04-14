import Data.Char

firstOrEmpty :: [[Char]] -> [Char]
{--
firstOrEmpty lst = if not (null lst) then (head lst) else "Empty"
--}
firstOrEmpty [] = "Empty"
firstOrEmpty (x:xs) | not (null x) = x | otherwise = error "This string is empty"


{-- Recursion 
 -  Concatenates two lists 
 - --}
-- Como fazer esse cabeçalho?? +++ :: (List a) => a -> a -> a
lst1 +++ lst2 = if null lst1 {- check emptyness -}
                then lst2    -- base case
                else (head lst1) : (tail lst1 +++ lst2)

list3 = 1:2:3:[]

{-- Acesso aleatório --}
professora = "Milene Serrano"
letterI = professora !! 1

{--Careful ! Comparing lists--}
thatsTrue = [3, 2, 1] > [2, 10, 100]
thatsAlso = [3, 4, 2] > [3, 4]
thatsNot = [1,2,3] == [1,5,6]
butThatIs = [1,2,3] == [1,2,3]

pares = [2*x | x <- [0..10]] {-- 2*x tal q x pertence a 0 ,..., 10 --}
pares2 = map (\x -> 2 * x) pares

cabeça = head [1..5] -- 1
ultimo = last [1..5] -- 1
inicio = init [1..5] -- 5 4 3 2
rabo = tail [1..5] -- 4 3 2 1
nula = null [0] -- False
tamanho = length [1..3] -- 3
maxFromList = maximum [1..5] -- 5
minFromList = minimum [1..6] -- 1

{-- Custom length --}
myLength [] = 0
myLength [a] = 1
{-- Operador de append -> Retira o primeiro elemento -}
myLength lst = 1 + myLength (tail lst)

-- Using other notation 
somaLista :: (Num a) => [a] -> a
somaLista [] = 0
somaLista (h:s) = h + somaLista s

usaPar :: (Num a) => (a, a) -> a
usaPar (x,y) = x + y

ignoraXDobraY :: (Num a) => (a, a) -> a
ignoraXDobraY (_, y) = 2*y

{-- Test destructuring --}
pairCharInt :: (Int, Int) -> (Char, Int)
pairCharInt (a,y) = (chr (a), y)

{-- Guarded version of recursion
 - Is a resumed IF
 - --}
gconc :: [Int] -> [Int] -> [Int]
gconc lst1 lst2 
  | null lst1 = lst2
  | otherwise = (head lst1) : (gconc (tail lst1) lst2)

{-- Using Where:--}
avaliacaoFisicaWhere diasPorSemana horasPorDia
  | base <= 0 = ""
  | base <= 3 = ""
  | base <= 7 = ""
  | otherwise = ""
  where base = diasPorSemana * horasPorDia

descList xs = "Trata-se de uma lista " ++ qual xs
  where qual [] = "Vazia"
        qual [x] = "Única!"
        qual xs = "Maior!"

{-- Math --}
mySuc = succ 8 {-- Successor  of 8, returns 9--}
myMin = min 3.158 1.568
myMax = max 5 5000

{-- Type Inheritance 
 -  Using A generic type that is derived from Num (Int, Float ...)
--}
doubleMe :: (Num a) => a -> a
doubleMe x = x + x

doubleSmallNumber x
  | x > 100 = x
  | otherwise = x * 2

data Planet = Mercury
            | Earth
            | Saturn
            | Jupiter
            | Neptune
            | Uranus

{-- getAge ::  Planet -> Float -> Int --}

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)


