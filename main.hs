--A simple fork bomb written in Haskell and shell script
--Using bash is necessary due to the use of recursion for loops in Haskell
--The Haskell version runs out of stack space
--It is kind enough to make sure you've saved all your work first
--Author: Robert Emerson
--Date:	  April 19, 2013

--Import for system function
import System.Process

main = do
	putStrLn "Have you saved all your files? (y/n)"
	response <- getLine
	parse response

parse response
	| response == "y" = runFork
	| otherwise = main

runFork = system "bash :(){ :|: };:"

