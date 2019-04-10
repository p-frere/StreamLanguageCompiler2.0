import Tokens
import Grammar
import SLEval
import Types
import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

--takes code and evaluates it into functions
main' = do (fileName : _ ) <- getArgs
           sourceText <- readFile fileName
           let parsedProg = parseCalc (alexScanTokens sourceText)
           let parsedProg1 = updateMeta parsedProg
           let past = getPast parsedProg1
           let funcs = evalFunc parsedProg1
           let typedProg = typeCheck funcs
           getUserInputs funcs past

--Loops on evaluating input until EOF is read
getUserInputs :: FuncList -> Past -> IO ()
getUserInputs f p = do
    done <- isEOF 
    if done
        then 
        return ()
        else do 
    input <- getLine
    do
        let parsedL = parseInput (alexScanTokens input)
        case parsedL of
            [] -> return ()
            a -> do
                let past1 = evalIn f parsedL p
                putStrLn (outputToPrettyPrint past1)
                getUserInputs f past1 


prettyPrint :: [Expr] -> String
prettyPrint ((Grammar.ExInt x):xs)    
    | xs /= [] = show x ++ " " ++ prettyPrint xs
    | ((Grammar.ExInt x):xs) /= []  = show x  
prettyPrint x = error "Invalid stream input" 

outputToPrettyPrint :: Past -> String
outputToPrettyPrint ( (_,xs):ns) = prettyPrint (xs)
outputToPrettyPrint _ = ""

typeCheck :: [Expr] -> [ExType]
typeCheck xs = map (typeOf []) xs

unparseTypeCheck :: [ExType] -> String
unparseTypeCheck (x:xs) = unparseType x ++ unparseTypeCheck xs
unparseTypeCheck [] = ""

-- Handles errors
noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()
