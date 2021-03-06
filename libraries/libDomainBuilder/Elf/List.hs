-- BANNERSTART
-- - Copyright 2006-2008, Galois, Inc.
-- - This software is distributed under a standard, three-clause BSD license.
-- - Please see the file LICENSE, distributed with this software, for specific
-- - terms and conditions.
-- Author: Paul Graunke <pgraunke@galois.com>
-- BANNEREND
module Elf.List where
import qualified Elf.HOL
import qualified Elf.IntDef

null :: [a_1] -> Bool
null (_ : _) = False
null [] = True

foldl :: (a -> b_1 -> a) -> a -> [b_1] -> a
foldl f a (x : xs) = Elf.List.foldl f (f a x) xs
foldl _ y [] = y

butlast :: [a_1] -> [a_1]
butlast (x : xs) = (if Elf.List.null xs then [] else x : Elf.List.butlast xs)
butlast [] = []

memberl :: (Eq a_1) => a_1 -> [a_1] -> Bool
memberl x (y : ys) = Elf.HOL.op_eq x y || Elf.List.memberl x ys
memberl _ [] = False

data Nibble = Nibble0 | Nibble1 | Nibble2 | Nibble3 | Nibble4 | Nibble5 | Nibble6 | Nibble7 | Nibble8 | Nibble9 | NibbleA | NibbleB | NibbleC | NibbleD | NibbleE | NibbleF deriving (Read, Show)

replicate :: Integer -> a -> [a]
replicate n x = (if n == 0 then [] else x : Elf.List.replicate (Elf.IntDef.nat (n - 1)) x)

eq_nibble :: Elf.List.Nibble -> Elf.List.Nibble -> Bool
eq_nibble Elf.List.Nibble0 Elf.List.Nibble0 = True
eq_nibble Elf.List.Nibble1 Elf.List.Nibble1 = True
eq_nibble Elf.List.Nibble2 Elf.List.Nibble2 = True
eq_nibble Elf.List.Nibble3 Elf.List.Nibble3 = True
eq_nibble Elf.List.Nibble4 Elf.List.Nibble4 = True
eq_nibble Elf.List.Nibble5 Elf.List.Nibble5 = True
eq_nibble Elf.List.Nibble6 Elf.List.Nibble6 = True
eq_nibble Elf.List.Nibble7 Elf.List.Nibble7 = True
eq_nibble Elf.List.Nibble8 Elf.List.Nibble8 = True
eq_nibble Elf.List.Nibble9 Elf.List.Nibble9 = True
eq_nibble Elf.List.NibbleA Elf.List.NibbleA = True
eq_nibble Elf.List.NibbleB Elf.List.NibbleB = True
eq_nibble Elf.List.NibbleC Elf.List.NibbleC = True
eq_nibble Elf.List.NibbleD Elf.List.NibbleD = True
eq_nibble Elf.List.NibbleE Elf.List.NibbleE = True
eq_nibble Elf.List.NibbleF Elf.List.NibbleF = True
eq_nibble Elf.List.Nibble0 Elf.List.Nibble1 = False
eq_nibble Elf.List.Nibble0 Elf.List.Nibble2 = False
eq_nibble Elf.List.Nibble0 Elf.List.Nibble3 = False
eq_nibble Elf.List.Nibble0 Elf.List.Nibble4 = False
eq_nibble Elf.List.Nibble0 Elf.List.Nibble5 = False
eq_nibble Elf.List.Nibble0 Elf.List.Nibble6 = False
eq_nibble Elf.List.Nibble0 Elf.List.Nibble7 = False
eq_nibble Elf.List.Nibble0 Elf.List.Nibble8 = False
eq_nibble Elf.List.Nibble0 Elf.List.Nibble9 = False
eq_nibble Elf.List.Nibble0 Elf.List.NibbleA = False
eq_nibble Elf.List.Nibble0 Elf.List.NibbleB = False
eq_nibble Elf.List.Nibble0 Elf.List.NibbleC = False
eq_nibble Elf.List.Nibble0 Elf.List.NibbleD = False
eq_nibble Elf.List.Nibble0 Elf.List.NibbleE = False
eq_nibble Elf.List.Nibble0 Elf.List.NibbleF = False
eq_nibble Elf.List.Nibble1 Elf.List.Nibble2 = False
eq_nibble Elf.List.Nibble1 Elf.List.Nibble3 = False
eq_nibble Elf.List.Nibble1 Elf.List.Nibble4 = False
eq_nibble Elf.List.Nibble1 Elf.List.Nibble5 = False
eq_nibble Elf.List.Nibble1 Elf.List.Nibble6 = False
eq_nibble Elf.List.Nibble1 Elf.List.Nibble7 = False
eq_nibble Elf.List.Nibble1 Elf.List.Nibble8 = False
eq_nibble Elf.List.Nibble1 Elf.List.Nibble9 = False
eq_nibble Elf.List.Nibble1 Elf.List.NibbleA = False
eq_nibble Elf.List.Nibble1 Elf.List.NibbleB = False
eq_nibble Elf.List.Nibble1 Elf.List.NibbleC = False
eq_nibble Elf.List.Nibble1 Elf.List.NibbleD = False
eq_nibble Elf.List.Nibble1 Elf.List.NibbleE = False
eq_nibble Elf.List.Nibble1 Elf.List.NibbleF = False
eq_nibble Elf.List.Nibble2 Elf.List.Nibble3 = False
eq_nibble Elf.List.Nibble2 Elf.List.Nibble4 = False
eq_nibble Elf.List.Nibble2 Elf.List.Nibble5 = False
eq_nibble Elf.List.Nibble2 Elf.List.Nibble6 = False
eq_nibble Elf.List.Nibble2 Elf.List.Nibble7 = False
eq_nibble Elf.List.Nibble2 Elf.List.Nibble8 = False
eq_nibble Elf.List.Nibble2 Elf.List.Nibble9 = False
eq_nibble Elf.List.Nibble2 Elf.List.NibbleA = False
eq_nibble Elf.List.Nibble2 Elf.List.NibbleB = False
eq_nibble Elf.List.Nibble2 Elf.List.NibbleC = False
eq_nibble Elf.List.Nibble2 Elf.List.NibbleD = False
eq_nibble Elf.List.Nibble2 Elf.List.NibbleE = False
eq_nibble Elf.List.Nibble2 Elf.List.NibbleF = False
eq_nibble Elf.List.Nibble3 Elf.List.Nibble4 = False
eq_nibble Elf.List.Nibble3 Elf.List.Nibble5 = False
eq_nibble Elf.List.Nibble3 Elf.List.Nibble6 = False
eq_nibble Elf.List.Nibble3 Elf.List.Nibble7 = False
eq_nibble Elf.List.Nibble3 Elf.List.Nibble8 = False
eq_nibble Elf.List.Nibble3 Elf.List.Nibble9 = False
eq_nibble Elf.List.Nibble3 Elf.List.NibbleA = False
eq_nibble Elf.List.Nibble3 Elf.List.NibbleB = False
eq_nibble Elf.List.Nibble3 Elf.List.NibbleC = False
eq_nibble Elf.List.Nibble3 Elf.List.NibbleD = False
eq_nibble Elf.List.Nibble3 Elf.List.NibbleE = False
eq_nibble Elf.List.Nibble3 Elf.List.NibbleF = False
eq_nibble Elf.List.Nibble4 Elf.List.Nibble5 = False
eq_nibble Elf.List.Nibble4 Elf.List.Nibble6 = False
eq_nibble Elf.List.Nibble4 Elf.List.Nibble7 = False
eq_nibble Elf.List.Nibble4 Elf.List.Nibble8 = False
eq_nibble Elf.List.Nibble4 Elf.List.Nibble9 = False
eq_nibble Elf.List.Nibble4 Elf.List.NibbleA = False
eq_nibble Elf.List.Nibble4 Elf.List.NibbleB = False
eq_nibble Elf.List.Nibble4 Elf.List.NibbleC = False
eq_nibble Elf.List.Nibble4 Elf.List.NibbleD = False
eq_nibble Elf.List.Nibble4 Elf.List.NibbleE = False
eq_nibble Elf.List.Nibble4 Elf.List.NibbleF = False
eq_nibble Elf.List.Nibble5 Elf.List.Nibble6 = False
eq_nibble Elf.List.Nibble5 Elf.List.Nibble7 = False
eq_nibble Elf.List.Nibble5 Elf.List.Nibble8 = False
eq_nibble Elf.List.Nibble5 Elf.List.Nibble9 = False
eq_nibble Elf.List.Nibble5 Elf.List.NibbleA = False
eq_nibble Elf.List.Nibble5 Elf.List.NibbleB = False
eq_nibble Elf.List.Nibble5 Elf.List.NibbleC = False
eq_nibble Elf.List.Nibble5 Elf.List.NibbleD = False
eq_nibble Elf.List.Nibble5 Elf.List.NibbleE = False
eq_nibble Elf.List.Nibble5 Elf.List.NibbleF = False
eq_nibble Elf.List.Nibble6 Elf.List.Nibble7 = False
eq_nibble Elf.List.Nibble6 Elf.List.Nibble8 = False
eq_nibble Elf.List.Nibble6 Elf.List.Nibble9 = False
eq_nibble Elf.List.Nibble6 Elf.List.NibbleA = False
eq_nibble Elf.List.Nibble6 Elf.List.NibbleB = False
eq_nibble Elf.List.Nibble6 Elf.List.NibbleC = False
eq_nibble Elf.List.Nibble6 Elf.List.NibbleD = False
eq_nibble Elf.List.Nibble6 Elf.List.NibbleE = False
eq_nibble Elf.List.Nibble6 Elf.List.NibbleF = False
eq_nibble Elf.List.Nibble7 Elf.List.Nibble8 = False
eq_nibble Elf.List.Nibble7 Elf.List.Nibble9 = False
eq_nibble Elf.List.Nibble7 Elf.List.NibbleA = False
eq_nibble Elf.List.Nibble7 Elf.List.NibbleB = False
eq_nibble Elf.List.Nibble7 Elf.List.NibbleC = False
eq_nibble Elf.List.Nibble7 Elf.List.NibbleD = False
eq_nibble Elf.List.Nibble7 Elf.List.NibbleE = False
eq_nibble Elf.List.Nibble7 Elf.List.NibbleF = False
eq_nibble Elf.List.Nibble8 Elf.List.Nibble9 = False
eq_nibble Elf.List.Nibble8 Elf.List.NibbleA = False
eq_nibble Elf.List.Nibble8 Elf.List.NibbleB = False
eq_nibble Elf.List.Nibble8 Elf.List.NibbleC = False
eq_nibble Elf.List.Nibble8 Elf.List.NibbleD = False
eq_nibble Elf.List.Nibble8 Elf.List.NibbleE = False
eq_nibble Elf.List.Nibble8 Elf.List.NibbleF = False
eq_nibble Elf.List.Nibble9 Elf.List.NibbleA = False
eq_nibble Elf.List.Nibble9 Elf.List.NibbleB = False
eq_nibble Elf.List.Nibble9 Elf.List.NibbleC = False
eq_nibble Elf.List.Nibble9 Elf.List.NibbleD = False
eq_nibble Elf.List.Nibble9 Elf.List.NibbleE = False
eq_nibble Elf.List.Nibble9 Elf.List.NibbleF = False
eq_nibble Elf.List.NibbleA Elf.List.NibbleB = False
eq_nibble Elf.List.NibbleA Elf.List.NibbleC = False
eq_nibble Elf.List.NibbleA Elf.List.NibbleD = False
eq_nibble Elf.List.NibbleA Elf.List.NibbleE = False
eq_nibble Elf.List.NibbleA Elf.List.NibbleF = False
eq_nibble Elf.List.NibbleB Elf.List.NibbleC = False
eq_nibble Elf.List.NibbleB Elf.List.NibbleD = False
eq_nibble Elf.List.NibbleB Elf.List.NibbleE = False
eq_nibble Elf.List.NibbleB Elf.List.NibbleF = False
eq_nibble Elf.List.NibbleC Elf.List.NibbleD = False
eq_nibble Elf.List.NibbleC Elf.List.NibbleE = False
eq_nibble Elf.List.NibbleC Elf.List.NibbleF = False
eq_nibble Elf.List.NibbleD Elf.List.NibbleE = False
eq_nibble Elf.List.NibbleD Elf.List.NibbleF = False
eq_nibble Elf.List.NibbleE Elf.List.NibbleF = False
eq_nibble Elf.List.Nibble1 Elf.List.Nibble0 = False
eq_nibble Elf.List.Nibble2 Elf.List.Nibble0 = False
eq_nibble Elf.List.Nibble3 Elf.List.Nibble0 = False
eq_nibble Elf.List.Nibble4 Elf.List.Nibble0 = False
eq_nibble Elf.List.Nibble5 Elf.List.Nibble0 = False
eq_nibble Elf.List.Nibble6 Elf.List.Nibble0 = False
eq_nibble Elf.List.Nibble7 Elf.List.Nibble0 = False
eq_nibble Elf.List.Nibble8 Elf.List.Nibble0 = False
eq_nibble Elf.List.Nibble9 Elf.List.Nibble0 = False
eq_nibble Elf.List.NibbleA Elf.List.Nibble0 = False
eq_nibble Elf.List.NibbleB Elf.List.Nibble0 = False
eq_nibble Elf.List.NibbleC Elf.List.Nibble0 = False
eq_nibble Elf.List.NibbleD Elf.List.Nibble0 = False
eq_nibble Elf.List.NibbleE Elf.List.Nibble0 = False
eq_nibble Elf.List.NibbleF Elf.List.Nibble0 = False
eq_nibble Elf.List.Nibble2 Elf.List.Nibble1 = False
eq_nibble Elf.List.Nibble3 Elf.List.Nibble1 = False
eq_nibble Elf.List.Nibble4 Elf.List.Nibble1 = False
eq_nibble Elf.List.Nibble5 Elf.List.Nibble1 = False
eq_nibble Elf.List.Nibble6 Elf.List.Nibble1 = False
eq_nibble Elf.List.Nibble7 Elf.List.Nibble1 = False
eq_nibble Elf.List.Nibble8 Elf.List.Nibble1 = False
eq_nibble Elf.List.Nibble9 Elf.List.Nibble1 = False
eq_nibble Elf.List.NibbleA Elf.List.Nibble1 = False
eq_nibble Elf.List.NibbleB Elf.List.Nibble1 = False
eq_nibble Elf.List.NibbleC Elf.List.Nibble1 = False
eq_nibble Elf.List.NibbleD Elf.List.Nibble1 = False
eq_nibble Elf.List.NibbleE Elf.List.Nibble1 = False
eq_nibble Elf.List.NibbleF Elf.List.Nibble1 = False
eq_nibble Elf.List.Nibble3 Elf.List.Nibble2 = False
eq_nibble Elf.List.Nibble4 Elf.List.Nibble2 = False
eq_nibble Elf.List.Nibble5 Elf.List.Nibble2 = False
eq_nibble Elf.List.Nibble6 Elf.List.Nibble2 = False
eq_nibble Elf.List.Nibble7 Elf.List.Nibble2 = False
eq_nibble Elf.List.Nibble8 Elf.List.Nibble2 = False
eq_nibble Elf.List.Nibble9 Elf.List.Nibble2 = False
eq_nibble Elf.List.NibbleA Elf.List.Nibble2 = False
eq_nibble Elf.List.NibbleB Elf.List.Nibble2 = False
eq_nibble Elf.List.NibbleC Elf.List.Nibble2 = False
eq_nibble Elf.List.NibbleD Elf.List.Nibble2 = False
eq_nibble Elf.List.NibbleE Elf.List.Nibble2 = False
eq_nibble Elf.List.NibbleF Elf.List.Nibble2 = False
eq_nibble Elf.List.Nibble4 Elf.List.Nibble3 = False
eq_nibble Elf.List.Nibble5 Elf.List.Nibble3 = False
eq_nibble Elf.List.Nibble6 Elf.List.Nibble3 = False
eq_nibble Elf.List.Nibble7 Elf.List.Nibble3 = False
eq_nibble Elf.List.Nibble8 Elf.List.Nibble3 = False
eq_nibble Elf.List.Nibble9 Elf.List.Nibble3 = False
eq_nibble Elf.List.NibbleA Elf.List.Nibble3 = False
eq_nibble Elf.List.NibbleB Elf.List.Nibble3 = False
eq_nibble Elf.List.NibbleC Elf.List.Nibble3 = False
eq_nibble Elf.List.NibbleD Elf.List.Nibble3 = False
eq_nibble Elf.List.NibbleE Elf.List.Nibble3 = False
eq_nibble Elf.List.NibbleF Elf.List.Nibble3 = False
eq_nibble Elf.List.Nibble5 Elf.List.Nibble4 = False
eq_nibble Elf.List.Nibble6 Elf.List.Nibble4 = False
eq_nibble Elf.List.Nibble7 Elf.List.Nibble4 = False
eq_nibble Elf.List.Nibble8 Elf.List.Nibble4 = False
eq_nibble Elf.List.Nibble9 Elf.List.Nibble4 = False
eq_nibble Elf.List.NibbleA Elf.List.Nibble4 = False
eq_nibble Elf.List.NibbleB Elf.List.Nibble4 = False
eq_nibble Elf.List.NibbleC Elf.List.Nibble4 = False
eq_nibble Elf.List.NibbleD Elf.List.Nibble4 = False
eq_nibble Elf.List.NibbleE Elf.List.Nibble4 = False
eq_nibble Elf.List.NibbleF Elf.List.Nibble4 = False
eq_nibble Elf.List.Nibble6 Elf.List.Nibble5 = False
eq_nibble Elf.List.Nibble7 Elf.List.Nibble5 = False
eq_nibble Elf.List.Nibble8 Elf.List.Nibble5 = False
eq_nibble Elf.List.Nibble9 Elf.List.Nibble5 = False
eq_nibble Elf.List.NibbleA Elf.List.Nibble5 = False
eq_nibble Elf.List.NibbleB Elf.List.Nibble5 = False
eq_nibble Elf.List.NibbleC Elf.List.Nibble5 = False
eq_nibble Elf.List.NibbleD Elf.List.Nibble5 = False
eq_nibble Elf.List.NibbleE Elf.List.Nibble5 = False
eq_nibble Elf.List.NibbleF Elf.List.Nibble5 = False
eq_nibble Elf.List.Nibble7 Elf.List.Nibble6 = False
eq_nibble Elf.List.Nibble8 Elf.List.Nibble6 = False
eq_nibble Elf.List.Nibble9 Elf.List.Nibble6 = False
eq_nibble Elf.List.NibbleA Elf.List.Nibble6 = False
eq_nibble Elf.List.NibbleB Elf.List.Nibble6 = False
eq_nibble Elf.List.NibbleC Elf.List.Nibble6 = False
eq_nibble Elf.List.NibbleD Elf.List.Nibble6 = False
eq_nibble Elf.List.NibbleE Elf.List.Nibble6 = False
eq_nibble Elf.List.NibbleF Elf.List.Nibble6 = False
eq_nibble Elf.List.Nibble8 Elf.List.Nibble7 = False
eq_nibble Elf.List.Nibble9 Elf.List.Nibble7 = False
eq_nibble Elf.List.NibbleA Elf.List.Nibble7 = False
eq_nibble Elf.List.NibbleB Elf.List.Nibble7 = False
eq_nibble Elf.List.NibbleC Elf.List.Nibble7 = False
eq_nibble Elf.List.NibbleD Elf.List.Nibble7 = False
eq_nibble Elf.List.NibbleE Elf.List.Nibble7 = False
eq_nibble Elf.List.NibbleF Elf.List.Nibble7 = False
eq_nibble Elf.List.Nibble9 Elf.List.Nibble8 = False
eq_nibble Elf.List.NibbleA Elf.List.Nibble8 = False
eq_nibble Elf.List.NibbleB Elf.List.Nibble8 = False
eq_nibble Elf.List.NibbleC Elf.List.Nibble8 = False
eq_nibble Elf.List.NibbleD Elf.List.Nibble8 = False
eq_nibble Elf.List.NibbleE Elf.List.Nibble8 = False
eq_nibble Elf.List.NibbleF Elf.List.Nibble8 = False
eq_nibble Elf.List.NibbleA Elf.List.Nibble9 = False
eq_nibble Elf.List.NibbleB Elf.List.Nibble9 = False
eq_nibble Elf.List.NibbleC Elf.List.Nibble9 = False
eq_nibble Elf.List.NibbleD Elf.List.Nibble9 = False
eq_nibble Elf.List.NibbleE Elf.List.Nibble9 = False
eq_nibble Elf.List.NibbleF Elf.List.Nibble9 = False
eq_nibble Elf.List.NibbleB Elf.List.NibbleA = False
eq_nibble Elf.List.NibbleC Elf.List.NibbleA = False
eq_nibble Elf.List.NibbleD Elf.List.NibbleA = False
eq_nibble Elf.List.NibbleE Elf.List.NibbleA = False
eq_nibble Elf.List.NibbleF Elf.List.NibbleA = False
eq_nibble Elf.List.NibbleC Elf.List.NibbleB = False
eq_nibble Elf.List.NibbleD Elf.List.NibbleB = False
eq_nibble Elf.List.NibbleE Elf.List.NibbleB = False
eq_nibble Elf.List.NibbleF Elf.List.NibbleB = False
eq_nibble Elf.List.NibbleD Elf.List.NibbleC = False
eq_nibble Elf.List.NibbleE Elf.List.NibbleC = False
eq_nibble Elf.List.NibbleF Elf.List.NibbleC = False
eq_nibble Elf.List.NibbleE Elf.List.NibbleD = False
eq_nibble Elf.List.NibbleF Elf.List.NibbleD = False
eq_nibble Elf.List.NibbleF Elf.List.NibbleE = False
