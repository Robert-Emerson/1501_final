--A simple fork bomb written in Haskell
--It is kind enough to make sure you've saved all your work first
--Author: Robert Emerson
--Date:	  April 19, 2013

--Import for forkProcess function
import System.Posix.Process.ByteString
import System.Posix.Types
import Data.Either

main = do
	putStrLn "Have you saved all your files? (y/n)"
	response <- getLine
	parse response

parse response
	| response == "y" = runFork
	| otherwise = main

runFork :: IO ProcessID
runFork = forkProcess (putStrLn "I love Haskell") >> runFork
