import System.Environment

main = do
	args <- getArgs 
	contents <- readFile (args !! 0)
	--At this point, I know that the contents are correct, because I've tested them.
	mapM_ putStrLn $ (map reverseWords) (lines contents)

reverseWords :: String -> String
reverseWords = unwords . reverse . words