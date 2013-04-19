import System.Posix.Process.ByteString

main = do
	forkThis

forkThis = putStrLn "Fork you Haskell" >> forkThis
