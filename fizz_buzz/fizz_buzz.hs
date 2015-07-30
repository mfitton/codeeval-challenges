import System.Environment

main = do
	filename <- getArgs 
	contents <- readFile (filename !! 0)
	--At this point, I know that the contents are correct, because I've tested them.
	let fbArgsList = map words $ lines contents
		in mapM_ putStrLn $ [ fizzBuzz (read a) (read b) (read c) | [a, b, c] <- fbArgsList]
	


--Make a FizzBuzz function that takes in a string of a number and returns either that same string, or an 'F' 'B' or 'FB'
fizzBuzz :: Int -> Int -> Int -> String
fizzBuzz a b c = unwords $ map (whichStringFB a b) $ map show [1..c]

whichStringFB :: Int -> Int -> String -> String
whichStringFB smallMod bigMod numStr 
	| (num `mod` smallMod == 0) && (num `mod` bigMod == 0) = "FB"
	| num `mod` smallMod == 0                              = "F"
	| num `mod` bigMod == 0                                = "B"
	| otherwise                                            = numStr
	where num = read numStr 
