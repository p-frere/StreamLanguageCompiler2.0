{ 
module Grammar where 
import Tokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
   int     { TokenInt _ $$ }
   '='     { TokenEq _ }
   '+'     { TokenPlus _ }
   sum     { TokenPlus _ }
   '-'     { TokenMinus _ }
   sub     { TokenMinus _ }
   '*'     { TokenTimes _ }
   mult    { TokenTimes _ }
   '('     { TokenLParen _ }
   ')'     { TokenRParen _ }
   '['     { TokenLParenSq _ }
   ']'     { TokenRParenSq _ }
   ','     { TokenSeq _ }
   let     { TokenLet _ }
   in      { TokenIn _ }
   var     { TokenVar _ $$ }
   lam     { TokenLam _ }


%nonassoc int var '(' ')' '[' ']' in
%left '+' sum '-' sub
%left '*' mult 
%left lam let
%left APP

%% 
Ex: Exp                             { [$1] }

Integer : int                       { ExInt $1 }

Exp : '(' Exp ')'                        { $2 }
    | Integer                            { $1 }
    | var                                { ExVar $1 } 
    | Exp '+' Exp                        { ExSum ($1) ($3) }
    | sum '(' Exp ',' Exp ')'            { ExSum ($3) ($5) } 
    | Exp '-' Exp                        { ExSub ($1) ($3) }
    | sub '(' Exp ',' Exp ')'            { ExSub ($3) ($5) }  
    | Exp '*' Exp                        { ExMult ($1) ($3) } 
    | mult '(' Exp ',' Exp ')'           { ExMult ($3) ($5) }
    | Exp Exp %prec APP                  { ExApp ($1) ($2) }
    | lam var '(' Exp ')'                { ExLam ($2) ($4) }
    | let var '=' Exp in Exp             { ExLet $2 ($4) ($6) }

Meta :  MtFuncs [Expr]
        MtPst Past 
        MtPstSize Int
        MtInCnt Int



{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

type Environment = [ (String,Expr) ]

type Mapping = ([Expr],[Expr])
type Past = [Mapping]
type FuncList = [Expr]
type InputList = [Expr]

type MetaData = (Meta, Meta, Meta)

data Meta = MtFuncs [Expr]
          | MtPst Past 
          | MtPstSize Int
          | MtInCnt Int
          deriving (Show,Eq)

data Expr = ExInt Int 
          | ExVar String 
          | ExSum Expr Expr 
          | ExSub Expr Expr 
          | ExMult Expr Expr  
          | ExApp Expr Expr
          | ExLam String Expr
          | ExLet String Expr Expr 
          deriving (Show,Eq)

} 
