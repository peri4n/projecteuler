import Data.Function (on)
import Data.List

collatz :: Int -> Int
collatz n
  | (rem n 2) == 0 =  1 + (collatz (quot n 2))
  | n == 1 = 1
  | otherwise = 1 + (collatz (3 * n + 1))

solution = maximumBy (compare `on` snd) $ map (\x -> (x, (collatz) x)) [1..1000000]

main :: IO ()
main = putStrLn $ show solution
