-------------------------------------------------------------------------------
-- Estructuras de Datos. 2º Curso. ETSI Informática. UMA
--
-- PRACTICA 2ª (Características de la Programación Funcional)
--
-- (completa y sustituye los siguientes datos)
-- Titulación: Grado en Ingeniería …………………………………… [Informática | del Software | de Computadores].
-- Alumno: APELLIDOS, NOMBRE
-- Fecha de entrega:  DIA | MES | AÑO
--
-- Ejercicios resueltos de la Relación : ..........
--
-------------------------------------------------------------------------------
module Practica2 where

import Test.QuickCheck



-------------------------------------------------------------------------------
-- Ejercicio 4
-------------------------------------------------------------------------------
distintos :: Eq a => [a] -> Bool
distintos [] = True
distintos (x:xs)
  |elem x xs = False
  |otherwise = distintos xs

-------------------------------------------------------------------------------
-- Ejercicio 11
-------------------------------------------------------------------------------

take'::Int->[a]->[a]
take' 0 _ = []
take' n [] = []
take' n list = [x | (p,x) <- zip[0..(n-1)] list]


drop' :: Int -> [a] -> [a]
drop' 0 xs = xs
drop' n [] = []
drop' n list = [x | (p,x) <- zip [0..(length list)] list, p>=n]


-------------------------------------------------------------------------------
-- Ejercicio 13
-------------------------------------------------------------------------------
desconocida :: (Ord a) => [a] -> Bool
desconocida xs = and [ x<=y | (x,y) <- zip xs (tail xs) ]
-- Qué hace?
--Comprobar que una lista está ordenada ascendentemente

-------------------------------------------------------------------------------
-- Ejercicio 14
-------------------------------------------------------------------------------
-- apartados a, b, e y f
-- a)
inserta :: (Ord a) => a -> [a] -> [a]
inserta x list@(y:ys) = (takeWhile (<x) list) ++ [x] ++ (dropWhile(<x) list)


-- b)
inserta' :: (Ord a ) => a -> [a] -> [a]
inserta' x [] = [x]
inserta' x (y:ys) = undefined

-- e)

ordena :: (Ord a) => [a] -> [a]
ordena xs = undefined

-- f)  Utiliza para ello la función sorted definida en las transarencias



-------------------------------------------------------------------------------
-- Ejercicio 22
-------------------------------------------------------------------------------
binarios ::Integer -> [String]
binarios 0 = [""]
binarios n = map ('0':) previas ++ map ('1':) previas
  where
    previas = binarios (n - 1)

{-
-------------------------------------------------------------------------------
-- Ejercicio 34
-------------------------------------------------------------------------------

type Izdo = Double
type Dcho = Double
type Epsilon = Double
type Función = Double -> Double
biparticion :: Función -> Izdo -> Dcho -> Epsilon -> Double

biparticion f a b epsilon
  | long < epsilon    = undefined
-- sigue aqui
  where
      long = b - a
-- sigue aqui


-------------------------------------------------------------------------------
-- Lista de ejercicios extra. Ejercicio [lista de pares] 
-------------------------------------------------------------------------------

cotizacion :: [(String, Double)]
cotizacion = [("apple", 116), ("intel", 35), ("google", 824), ("nvidia", 67)]

-- buscarRec
-- buscarC
-- buscarP
-- valorCartera. DIFICIL

-------------------------------------------------------------------------------
-- Lista de ejercicios extra. Ejercicio [mezcla]
-------------------------------------------------------------------------------
-- mezcla

-------------------------------------------------------------------------------
-- Lista de ejercicios extra. Ejercicio [agrupar]
-------------------------------------------------------------------------------
-- agrupar. DIFICIL
-}