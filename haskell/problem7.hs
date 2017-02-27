-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10001st prime number?

main :: IO ()
main = putStrLn $ show $ (filter isPrime [1..]) !! 10001

divides :: Int -> Int -> Bool
divides x d = (mod x d) == 0

isPrime :: Int -> Bool
isPrime x = not $ any (divides x) [2,3..(floor $ sqrt (fromIntegral x))]
