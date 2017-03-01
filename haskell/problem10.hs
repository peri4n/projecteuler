-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
-- Find the sum of all the primes below two million.

main :: IO ()
main = putStrLn $ show . sum $ takeWhile (<2000000) primes

primes :: [Int]
primes = filter isPrime (2:[3,5..])

divides :: Int -> Int -> Bool
divides x d = (mod x d) == 0

isPrime :: Int -> Bool
isPrime x = not $ any (divides x) [2,3..(floor $ sqrt (fromIntegral x))]
