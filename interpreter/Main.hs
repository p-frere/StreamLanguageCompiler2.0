--import Tokens
--import Grammar
--import SLEval
import System.Environment
import Control.Exception
import System.IO
import Control.Monad  
import Data.Char 


data Expr = ExInt Int 
            | ExVar String   
            | ExSum Expr Expr 
            | ExSub Expr Expr 
            | ExMult Expr Expr  
            | ExApp Expr Expr
            | ExLam String Expr
            | ExLet String Expr Expr deriving (Show,Eq)

type Mapping = ([Expr],[Expr])
type Past = [Mapping]
type FuncList = [Expr]
type InputList = [Expr]

type MetaData = (Meta, Meta, Meta)

data Meta = MtFuncs [Expr] 
            | MtPst Past   
            | MtPstSize Int
            | MtInCnt Int

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

--g :: [Expr] -> IO String
--g m = putStrLn ("Hi, " ++ show m ++"!")


main = do
    (fileName : _ ) <- getArgs
    hSetBuffering stdout LineBuffering -- or use NoBuffering
    let meta = tempMetaEval fileName
    let func = tempFuncEval meta
    let past = tempPastEval meta
    putStrLn "Enter some names."
    input <- getContents
    let past = tempProecssStream input
    --mapM_ g (head past)
    --out <- g (snd (head past))
    --mapM_ f out
    mapM_ f (lines input)

main2 = forever $ do  
    let meta = tempMetaEval "filename"
    let func = tempFuncEval meta
    let past = tempPastEval meta
    putStrLn "Enter some names."
    l <- getLine
    let past = tempProecssStream l
    print (snd (head past))
      

main1 = forever $ do  
    putStr "Give me some input: "  
    l <- getLine  
    putStrLn $ map toUpper l 

tempProecssStream ::String -> Past
tempProecssStream s  = [([ExInt 1],[ExInt 1])]

tempMetaEval :: String -> MetaData
tempMetaEval s = (MtInCnt 1, MtPstSize 1, MtFuncs [ExInt 1])   

tempFuncEval :: MetaData -> [Expr]
tempFuncEval m = [(ExInt 0)]

tempPastEval :: MetaData -> Past
tempPastEval m = [([ExInt 0],[ExInt 0])]

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