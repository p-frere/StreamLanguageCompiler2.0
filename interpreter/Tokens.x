{ 
module Tokens where 
}

%wrapper "posn" 

$digit = 0-9     
$alpha = [a-zA-Z]    

tokens :-
  $white+                               ; 
  "$".*                                 ; 
  \-?$digit+                            { tok (\p s -> TokenInt p (read s)) }
  \=                                    { tok (\p s -> TokenEq p ) }
  \+                                    { tok (\p s -> TokenPlus p ) }
  sum                                   { tok (\p s -> TokenPlus p) }
  \-                                    { tok (\p s -> TokenMinus p ) }
  sub                                   { tok (\p s -> TokenMinus p) }
  \*                                    { tok (\p s -> TokenTimes p  )}
  mult                                  { tok (\p s -> TokenTimes p) }
  \(                                    { tok (\p s -> TokenLParen p) }
  \)                                    { tok (\p s -> TokenRParen p) }
  $alpha [$alpha $digit \. \_ \’]*      { tok (\p s -> TokenVar p s) } 
  \[                                    { tok (\p s -> TokenLParenSq p) }
  \]                                    { tok (\p s -> TokenRParenSq p) }
  \,                                    { tok (\p s -> TokenSeq p ) }
  let                                   { tok (\p s -> TokenLet p )}
  in        		                        { tok (\p s -> TokenIn p )}
  \\                                    { tok (\p s -> TokenLam p) }
  lam                                   { tok (\p s -> TokenLam p) }
  set                                   { tok (\p s -> TokenSet p) }
  past                                  { tok (\p s -> TokenPast p) }
  pastCount                             { tok (\p s -> TokenPastCount p) }
  inStreamCount                         { tok (\p s -> TokenInStreamCount p) }



{ 
-- Each action has type :: AlexPosn -> String -> MDLToken 
tok f p s = f p s

-- The token type: 
data Token =
  TokenInt              AlexPosn Int    |
  TokenEq               AlexPosn        |
  TokenPlus             AlexPosn        |
  TokenMinus            AlexPosn        |
  TokenTimes            AlexPosn        |
  TokenLParen           AlexPosn        |
  TokenRParen           AlexPosn        |
  TokenLParenSq         AlexPosn        |
  TokenRParenSq         AlexPosn        |
  TokenSeq              AlexPosn        |
  TokenLet              AlexPosn        |
  TokenIn               AlexPosn        |
  TokenLam              AlexPosn        |
  TokenSet              AlexPosn        |
  TokenPast             AlexPosn        |
  TokenPastCount        AlexPosn        |
  TokenInStreamCount    AlexPosn        |
  TokenVar              AlexPosn String 
  deriving (Eq,Show) 



tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParenSq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParenSq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSeq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLam (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPast (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPastCount (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInStreamCount (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}