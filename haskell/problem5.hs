import Data.List
import Data.Maybe

-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

main :: IO ()
main = putStrLn $ show . fromJust $ find dividableByAll [20,40..]

divisors :: [Int]
divisors = [20, 19..11]

divides :: Int -> Int -> Bool
divides x d = (mod x d) == 0

dividableByAll :: Int -> Bool
dividableByAll x = all (divides x) divisors
