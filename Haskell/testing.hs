module Lib (module Data.List, module Data.Char, module Lib) where
import Data.List 
import Data.Char


main :: IO ()
main = return()

1.
(yourname) = "Emma Perez"

2.
axb :: Float -> Float -> Float -> Float
axb a x b = ((a * x) + b)

3.
distance (x1, y1) (x2, y2) = sqrt (x * x + y * y)
    where 
        x = x1 - x2
        y = y1 - y2

4.
purge match lst = filter (x) lst
    where
        not(x == match)
5.
counttrues lst = length (filter (==True) lst)

6.
buildlst a =
    if (a == 0)
    then []
    else (a : (buildlst (if (a < 0)
                        then ( a + 1)
                        else (a - 1))))

7.
dotproduct v1 v2 = 
    if (length v1 == length v2)
    then (sum (zipWith (*) v1 v2))
    else sum v1 
 
 8. 
multiples base n = 
    map (*base) (x)
    where 
        x = buildlst n

9.
runcmdPlus x = sum(x)
runcmdTimes x = product(x)
runcmdCdr x = tail(x) 
runcmdAppend x = concat(x)

