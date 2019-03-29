import Tokens
import Grammar
import SLEval
import System.Environment
import Control.Exception
import System.IO
import Control.Monad
import Data.Char
import Text.Read

main :: IO ()
main = catch main' noParse

main' = do (fileName : _ ) <- getArgs
           sourceText <- readFile fileName
           --parsedProgram is a (meta, meta, meta) <- this last meta is MtFuncs[]
           let parsedProg = parseCalc (alexScanTokens sourceText)
           putStrLn ("Parsed as: " ++ (show parsedProg))
           let parsedProg1 = updateMeta parsedProg
           putStrLn ("Parsed as: " ++ (show parsedProg1))
           --
           let past = getPast parsedProg1
           putStrLn ("Inital Past: " ++ (show past))
           let funcs = evalFunc parsedProg1
           putStrLn ("Funcs: " ++ (show funcs))
           result <- getUserInputs funcs past
           putStrLn (show result)
        --    forever $ do
        --     l <- getLine
        --     let parsedL = parseInput (alexScanTokens l)
        --     putStrLn ("Input: " ++ (show parsedL))
        --     let past1 = evalIn funcs parsedL past1
        --     putStrLn ("Evaluated: " ++ (show past))
        --     --print (prettyPrint (snd (head past1)))
        --     --hPutStr stdout (prettyPrint (snd (head past1)))

getUserInputs :: FuncList -> Past -> IO [Past]
getUserInputs f p = do
    input <- getLine
    case parseInput1 input of
        Nothing    -> return []
        Just a -> do
            let parsedL = parseInput (alexScanTokens a)
            let past1 = evalIn f parsedL p
            moreinputs <- getUserInputs f past1
            return  (past1 : moreinputs)

parseInput1 :: String -> Maybe String
--parseInput1 input = if input == "exit" then Nothing else (readMaybe input):: Maybe String
--parseInput1 input = (Just input):: Maybe String
parseInput1 input = if input == "exit" then Nothing else (Just input):: Maybe String





getFuncs :: (Meta,Meta,Meta)  -> [Expr]
getFuncs (_,_,(MtFuncs fs)) = fs


prettyPrint :: [Expr] -> String
prettyPrint ((Grammar.ExInt x):xs)
    | xs /= [] = show x ++ " " ++ prettyPrint xs
    | ((Grammar.ExInt x):xs) /= []  = show x




noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()
