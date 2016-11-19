import Data.List

-- Project euler problem 2
-- Find the sum of all even-valued fibonacci numbers not exceeding 4 million
main = putStrLn $ show result
    where
        result = sum [ x | x <- (takeWhile (<=4000000) fibonacci), x `mod` 2 == 0 ]

fibonacci :: [Int]
fibonacci = fibonacci' 0 1

fibonacci' :: Int -> Int -> [Int]
fibonacci' x y = (x+y) : (fibonacci' y (x+y))
