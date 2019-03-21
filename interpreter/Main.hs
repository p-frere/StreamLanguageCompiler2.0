--import Tokens
--import Grammar
--import SLEval
import System.Environment
import Control.Exception
import System.IO


-- main :: IO ()
-- main = catch main' noParse


-- main' = do (fileName : _ ) <- getArgs 
--            sourceText <- readFile fileName
--            getContents
--            --interact test1
--            --putStrLn ("Parsing : " ++ sourceText)
--            --let parsedProg = parseCalc (alexScanTokens sourceText)
--            --putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")
--            --let result = evalLines (parsedProg)
--            --putStrLn ("Evaluates to " ++ (unparse result))
--            putStrLn ("done")

f line = putStrLn ("Hi, " ++ line ++ "!")

g old new = "Hi, " ++ old ++ new ++ "!"


main = do
    (fileName : _ ) <- getArgs
    hSetBuffering stdout LineBuffering -- or use NoBuffering
    putStrLn "Enter some names."
    let past = "P"
    input <- getContents
    let past = g past input
    putStrLn past
    mapM_ f (lines input)

-- take in 
-- apply f in past
-- get back out past
-- update past
-- print out

-- main = do
--     (fileName : _ ) <- getArgs
--     hSetBuffering stdout LineBuffering -- or use NoBuffering
--     putStrLn "Enter some names."
--     input <- getContents
--     let fileName = input
--     mapM_ f (lines input)

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()

test1 :: String -> String
test1 s = s