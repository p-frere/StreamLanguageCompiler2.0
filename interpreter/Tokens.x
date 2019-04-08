{
module Tokens where
}

%wrapper "posn"

--eof :: user -> AlexInput -> Int -> AlexInput -> Bool
--eof _ _ _ (_, after) =
--  case after of
--    []       -> True  -- end-of-file
--    _        -> False



--digits
$digit = 0-9
--character
$alpha = [a-zA-Z]
--end of line character
$eol   = [\n]
--end of file character
$eof   = [\EOF]

-- The tokens: 
tokens :-
  "$".*                             ;
  $eol+                             { tok (\p s -> TokenEndLine p) }
  $eof                              { tok (\p s -> TokenEndFile p) }
  $white+                           ; 
  \-?$digit+                        { tok (\p s -> TokenInt p (read s)) }
  \=                                { tok (\p s -> TokenEq p) }
  \+                                { tok (\p s -> TokenPlus p) }
  sum                               { tok (\p s -> TokenPlus p) }
  \-                                { tok (\p s -> TokenMinus p) }
  sub                               { tok (\p s -> TokenMinus p) }
  \*                                { tok (\p s -> TokenTimes p) }
  mult                              { tok (\p s -> TokenTimes p) }
  \(                                { tok (\p s -> TokenLParen p) }
  \)                                { tok (\p s -> TokenRParen p) }
  \[                                { tok (\p s -> TokenLParenSq p) }
  \]                                { tok (\p s -> TokenRParenSq p) }
  \,                                { tok (\p s -> TokenSeq p ) }
  let                               { tok (\p s -> TokenLet p) }
  in        		                    { tok (\p s -> TokenIn p) }
  \\                                { tok (\p s -> TokenLam p) }
  lam                               { tok (\p s -> TokenLam p) }
  set                               { tok (\p s -> TokenSet p) }
  past                              { tok (\p s -> TokenPast p) }
  pastCount                         { tok (\p s -> TokenPastCount p) }
  inStreamCount                     { tok (\p s -> TokenInStreamCount p) }
  $alpha [$alpha $digit \. \_ \’]*  { tok (\p s -> TokenVar p s) } 


{ 
-- Each action has type :: AlexPosn -> String -> MDLToken 
tok f p s = f p s

-- The token type: 
data Token =
  TokenInt           AlexPosn Int   |
  TokenEq            AlexPosn       |
  TokenPlus          AlexPosn       |
  TokenMinus         AlexPosn       |
  TokenTimes         AlexPosn       |
  TokenLParen        AlexPosn       |
  TokenRParen        AlexPosn       |
  TokenLParenSq      AlexPosn       |
  TokenRParenSq      AlexPosn       |
  TokenSeq           AlexPosn       |
  TokenLet           AlexPosn       |
  TokenIn            AlexPosn       |
  TokenLam           AlexPosn       |
  TokenSet           AlexPosn       |
  TokenPast          AlexPosn       |
  TokenPastCount     AlexPosn       |
  TokenInStreamCount AlexPosn       |
  TokenEndLine       AlexPosn       |
  TokenEndFile       AlexPosn       |
  TokenVar           AlexPosn String
  deriving (Eq,Show) 


tokenPosn :: Token -> String
tokenPosn (TokenInt (AlexPn a l c) s) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: Integer:" ++ show(s) 
tokenPosn (TokenEq  (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: '='"
tokenPosn (TokenPlus (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: Sum / +"
tokenPosn (TokenMinus (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: Sub / -"
tokenPosn (TokenTimes (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: Mult / *"
tokenPosn (TokenLParen (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: '('"
tokenPosn (TokenRParen (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: ')'"
tokenPosn (TokenLParenSq (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: '['"
tokenPosn (TokenRParenSq (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: ']'"
tokenPosn (TokenSeq (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: Comma (Sequence)"
tokenPosn (TokenLet (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: Let Expression"
tokenPosn (TokenIn (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: in"
tokenPosn (TokenLam (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: Lambda Expression" 
tokenPosn (TokenVar (AlexPn a l c) s) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: Variable:" ++ show(s) 
tokenPosn (TokenPast (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: past"
tokenPosn (TokenPastCount (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: pastCount"
tokenPosn (TokenInStreamCount (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: inStreamCount"
tokenPosn (TokenEndLine (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: EOL (End of Line Character)"
tokenPosn (TokenEndFile (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: EOF (End of File Character)"
tokenPosn (TokenSet (AlexPn a l c)) = "Line:" ++ show(l) ++ " Col:" ++ show(c) ++ " ERROR: set"
}