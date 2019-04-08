import Tokens
import Grammar
import SLEval
import Types
import System.Environment
import Control.Exception
import System.IO
import Control.Monad
import Data.Char
import Text.Read
import Control.Conditional

main :: IO ()
main = catch main' noParse

main' = do (fileName : _ ) <- getArgs
           sourceText <- readFile fileName
           --parsedProgram is a (meta, meta, meta) <- this last meta is MtFuncs[]
           let parsedProg = parseCalc (alexScanTokens sourceText)
           --putStrLn ("Parsed as: " ++ (show parsedProg))
           let parsedProg1 = updateMeta parsedProg
           --putStrLn ("Parsed as: " ++ (show parsedProg1))
           --
           let past = getPast parsedProg1
           --putStrLn ("Inital Past: " ++ (show past))
           let funcs = evalFunc parsedProg1
           --putStrLn ("Funcs: " ++ (show funcs))

           let typedProg = typeCheck funcs
           --putStrLn ("Type Checking Passed with type " ++ (unparseTypeCheck typedProg) ++ "\n")

           getUserInputs funcs past
           --putStrLn (show result)

           --putStr (outputToPrettyPrint result)

        --    forever $ do
        --     l <- getLine
        --     let parsedL = parseInput (alexScanTokens l)
        --     putStrLn ("Input: " ++ (show parsedL))
        --     let past1 = evalIn funcs parsedL past1
        --     putStrLn ("Evaluated: " ++ (show past))
        --     --print (prettyPrint (snd (head past1)))
        --     --hPutStr stdout (prettyPrint (snd (head past1)))


getUserInputs f p = do
    input <- hGetLine stdin
    ifM isEOF (return ())
    ( do
            let parsedL = parseInput (alexScanTokens input)
            case parsedL of
                [] -> return ()
                a -> do
                    let past1 = evalIn f parsedL p
                    putStrLn (outputToPrettyPrint past1)
                    getUserInputs f past1 )





parseInput1 :: String -> Maybe String
--parseInput1 input = if input == "exit" then Nothing else (readMaybe input):: Maybe String
--parseInput1 input = (Just input):: Maybe String
parseInput1 input = if input == "exit" then Nothing else (Just input):: Maybe String

-- do ineof <- hIsEOF inh
--        if ineof
--        if hIsEOF inh


prettyPrint :: [Expr] -> String
prettyPrint ((Grammar.ExInt x):xs)    
    | xs /= [] = show x ++ " " ++ prettyPrint xs
    | ((Grammar.ExInt x):xs) /= []  = show x  

outputToPrettyPrint :: Past -> String
outputToPrettyPrint ( (_,xs):ns) = prettyPrint (xs)
outputToPrettyPrint _ = ""






typeCheck :: [Expr] -> [ExType]
typeCheck (x:xs) = (typeOf [] x):(typeCheck xs)
typeCheck [] = []

unparseTypeCheck :: [ExType] -> String
unparseTypeCheck (x:xs) = unparseType x ++ unparseTypeCheck xs
unparseTypeCheck [] = ""


getFuncs :: (Meta,Meta,Meta)  -> [Expr]
getFuncs (_,_,(MtFuncs fs)) = fs

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()
