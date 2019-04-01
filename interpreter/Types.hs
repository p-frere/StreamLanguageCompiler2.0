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


data ExType = TyExInt
            | ExFun ExType
            deriving (Show,Eq)

type TypeEnvironment = [ (String,ExType) ]

getBinding :: String -> TypeEnvironment -> ExType
getBinding x [] = error "Variable binding not found"
getBinding x ((y,t):tenv) | x == y  = t
                        | otherwise = getBinding x tenv

addBinding :: String -> ExType -> TypeEnvironment -> TypeEnvironment
addBinding x t tenv = (x,t):tenv

typeOf :: TypeEnvironment -> Expr -> ExType
typeOf tenv (ExInt _ )  = TyExInt

typeOf tenv (ExSum e1 e2) = TyExInt 
  where (TyExInt,TyExInt) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (ExSub e1 e2) = TyExInt 
  where (TyExInt,TyExInt) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (ExMult e1 e2) = TyExInt 
  where (TyExInt,TyExInt) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (ExVar x) = getBinding x tenv

typeOf tenv (ExLam x e) = ExFun u 
  where u = typeOf (addBinding x TyExInt tenv) e




typeOf tenv (ExApp e1 e2) | t3 == TyExInt = t2
  where ((ExFun t2),t3) = (typeOf tenv e1, typeOf tenv e2)





typeOf tenv (ExLet x e1 e2) | TyExInt == t1 = typeOf (addBinding x TyExInt tenv) e2
  where t1 = typeOf tenv e1


typeOf tenv _ = error "Type Error"


  








-- Function for printing the results of the TypeCheck
unparseType :: ExType -> String
unparseType TyExInt = "Int"
unparseType (ExFun t2) = (unparseType TyExInt) ++ " -> " ++ (unparseType t2)
