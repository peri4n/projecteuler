import Data.List

triplets :: [(Int, Int, Int)]
triplets = [(a,b,c) | c <- [1..1000], b <- [1..(c-1)], a <- [1..(b-1)]]

isPythagoraen :: (Int, Int,Int) -> Bool
isPythagoraen (a,b,c) = (a*a) + (b*b) == (c*c)

res :: Int
res = 
    let
        trip = find (\(a,b,c) -> a + b + c == 1000) $ filter isPythagoraen triplets
     in 
        case trip of
          Nothing -> 0
          Just (a,b,c) -> a * b * c

main :: IO ()
main = (putStrLn . show) res
