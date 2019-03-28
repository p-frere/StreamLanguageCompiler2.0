module Types where 
import Grammar

--type Environment = [ (String,Expr) ]

--type Mapping = ([Expr],[Expr])
--type Past = [Mapping]
--type FuncList = [Expr]
--type InputList = [Expr]
--type MetaData = (Meta, Meta, Meta)

--data Meta = MtFuncs [Expr]
--          | MtPst Past 
--          | MtPstSize Int
--          | MtInCnt Int

--data Expr = ExInt Int 
--          | ExVar String 
--          | ExSum Expr Expr 
--          | ExSub Expr Expr 
--          | ExMult Expr Expr  
--          | ExApp Expr Expr
--          | ExLam String Expr
--          | ExLet String Expr Expr 
--          | Cl String Expr Environment

data Type = Int 
          | ExFun Type

type TypeEnvironment = [ (String,Type) ]

getBinding :: String -> TypeEnvironment -> Type
getBinding x [] = error "Variable binding not found"
getBinding x ((y,t):tenv) | x == y  = t
                        | otherwise = getBinding x tenv

addBinding :: String -> TypeEnvironment -> TypeEnvironment
addBinding x tenv = (x):tenv

typeOf :: TypeEnvironment -> Expr -> Type
typeOf tenv (ExInt _ )  = Int

typeOf tenv (ExSum e1 e2) = Int 
  where (Int,Int) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (ExSub e1 e2) = Int 
  where (Int,Int) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (ExMult e1 e2) = Int 
  where (Int,Int) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (ExVar x) = getBinding x tenv

typeOf tenv (ExLam x e) = ExFun u 
  where u = typeOf (addBinding x tenv) e

typeOf tenv (ExApp e1 e2) | t1 == t3 = t2
  where ((ExFun t1 t2),t3) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (ExLet x e1 e2) | Int == t1 = typeOf (addBinding x tenv) e2
  where t1 = typeOf tenv e1

typeOf tenv _ = error "Type Error"

-- Function for printing the results of the TypeCheck
unparseType :: Type -> String
unparseType Int = "Int"
unparseType (ExFun t1 t2) = (unparseType t1) ++ " -> " ++ (unparseType t2)
