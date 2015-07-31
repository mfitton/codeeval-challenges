import System.Environment
import Data.List.Split


main = do
	args <- getArgs
	contents <- readFile (args !! 0)
	let cases = map (splitOn ",") $ lines contents 
	let casesAsInts = [map read line :: [Int]| line <- cases]
	mapM_ putStrLn $ map (show . greatestContiguousSum) casesAsInts

greatestContiguousSum :: [Int] -> Int
greatestContiguousSum [] = 0
greatestContiguousSum xs = maximum (greatestContiguousSums 0 xs)


greatestContiguousSums :: Int -> [Int] -> [Int] 
greatestContiguousSums a [] = []
greatestContiguousSums a (x:xs) = b:(greatestContiguousSums b xs) 
	where b = max (a + x) x