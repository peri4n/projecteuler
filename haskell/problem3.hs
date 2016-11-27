import Data.List

-- Project euler problem 3
-- What is the largest prime factor of the number 600851475143 ?
solution :: Int
solution = maximum $ primeFactors 600851475143 []

primeFactors :: Int -> [Int] -> [Int]
primeFactors x acc = 
    let
        smalledDivisor = find (\i -> (mod x i) == 0) [i | i <- [2..x]]
    in
        case smalledDivisor of
          Just d -> primeFactors (quot x d) (d:acc)
          Nothing -> acc
