{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t5 t6 t7 t8 t9 t10 t11 t12 t13 t14
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,303) ([16384,18191,16384,0,16384,1807,0,16384,0,0,16384,783,0,0,0,8,0,8,0,8,16384,783,0,0,0,256,0,14336,0,0,0,0,16384,0,0,0,16384,1807,0,0,0,0,0,16384,0,0,32768,0,32768,0,32768,0,0,8,16384,799,16384,783,16384,783,16384,783,16384,783,0,0,16384,783,16384,783,16384,783,16384,1807,0,16384,0,512,16384,783,0,516,16384,783,0,516,16384,783,0,0,16384,911,16384,911,16384,911,0,0,16384,783,16384,0,16384,0,0,32,16384,1807,0,16384,0,8,0,0,0,0,16384,799,16384,783,16384,783,16384,783,16384,927,16384,927,16384,927,16384,1807,0,0,16384,799,16384,799,16384,799,0,0,0,192,0,0,0,32,16384,1807,0,16384,16384,783,0,0,0,8,0,0,0,0,0,0,0,0,16384,783,0,192,0,0,0,128,16384,783,16384,783,0,32,16384,783,0,192,0,16,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","%start_parseInput","MetaData","IntList","EOL","Meta","ExprList","Expr","MappingExps","MappingExp","Exprs","IntExprs","int","'='","'+'","'-'","'*'","'('","')'","'['","']'","','","var","lam","set","past","pastCnt","SCount","eol","%eof"]
        bit_start = st * 32
        bit_end = (st + 1) * 32
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..31]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (15) = happyShift action_6
action_0 (17) = happyShift action_7
action_0 (18) = happyShift action_8
action_0 (19) = happyShift action_9
action_0 (20) = happyShift action_10
action_0 (25) = happyShift action_11
action_0 (26) = happyShift action_12
action_0 (27) = happyShift action_13
action_0 (31) = happyShift action_19
action_0 (5) = happyGoto action_17
action_0 (7) = happyGoto action_18
action_0 (8) = happyGoto action_3
action_0 (9) = happyGoto action_4
action_0 (10) = happyGoto action_5
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (15) = happyShift action_16
action_1 (6) = happyGoto action_14
action_1 (14) = happyGoto action_15
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (15) = happyShift action_6
action_2 (17) = happyShift action_7
action_2 (18) = happyShift action_8
action_2 (19) = happyShift action_9
action_2 (20) = happyShift action_10
action_2 (25) = happyShift action_11
action_2 (26) = happyShift action_12
action_2 (27) = happyShift action_13
action_2 (8) = happyGoto action_3
action_2 (9) = happyGoto action_4
action_2 (10) = happyGoto action_5
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (31) = happyShift action_19
action_3 (7) = happyGoto action_36
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_11

action_5 (15) = happyShift action_6
action_5 (17) = happyShift action_33
action_5 (18) = happyShift action_34
action_5 (19) = happyShift action_35
action_5 (20) = happyShift action_10
action_5 (25) = happyShift action_11
action_5 (26) = happyShift action_12
action_5 (31) = happyShift action_19
action_5 (7) = happyGoto action_31
action_5 (10) = happyGoto action_32
action_5 _ = happyReduce_12

action_6 _ = happyReduce_16

action_7 (20) = happyShift action_30
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (20) = happyShift action_29
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (20) = happyShift action_28
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (15) = happyShift action_6
action_10 (17) = happyShift action_7
action_10 (18) = happyShift action_8
action_10 (19) = happyShift action_9
action_10 (20) = happyShift action_10
action_10 (25) = happyShift action_11
action_10 (26) = happyShift action_12
action_10 (10) = happyGoto action_27
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_17

action_12 (25) = happyShift action_26
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (28) = happyShift action_23
action_13 (29) = happyShift action_24
action_13 (30) = happyShift action_25
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (32) = happyAccept
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_5

action_16 (15) = happyShift action_16
action_16 (14) = happyGoto action_22
action_16 _ = happyReduce_31

action_17 (32) = happyAccept
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (15) = happyShift action_6
action_18 (17) = happyShift action_7
action_18 (18) = happyShift action_8
action_18 (19) = happyShift action_9
action_18 (20) = happyShift action_10
action_18 (25) = happyShift action_11
action_18 (26) = happyShift action_12
action_18 (27) = happyShift action_13
action_18 (8) = happyGoto action_21
action_18 (9) = happyGoto action_4
action_18 (10) = happyGoto action_5
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (31) = happyShift action_19
action_19 (7) = happyGoto action_20
action_19 _ = happyReduce_6

action_20 _ = happyReduce_7

action_21 (31) = happyShift action_19
action_21 (7) = happyGoto action_53
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_32

action_23 (16) = happyShift action_52
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (16) = happyShift action_51
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (16) = happyShift action_50
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (20) = happyShift action_49
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (15) = happyShift action_6
action_27 (17) = happyShift action_33
action_27 (18) = happyShift action_34
action_27 (19) = happyShift action_35
action_27 (20) = happyShift action_10
action_27 (21) = happyShift action_48
action_27 (25) = happyShift action_11
action_27 (26) = happyShift action_12
action_27 (10) = happyGoto action_32
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (15) = happyShift action_6
action_28 (17) = happyShift action_7
action_28 (18) = happyShift action_8
action_28 (19) = happyShift action_9
action_28 (20) = happyShift action_10
action_28 (25) = happyShift action_11
action_28 (26) = happyShift action_12
action_28 (10) = happyGoto action_47
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (15) = happyShift action_6
action_29 (17) = happyShift action_7
action_29 (18) = happyShift action_8
action_29 (19) = happyShift action_9
action_29 (20) = happyShift action_10
action_29 (25) = happyShift action_11
action_29 (26) = happyShift action_12
action_29 (10) = happyGoto action_46
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (15) = happyShift action_6
action_30 (17) = happyShift action_7
action_30 (18) = happyShift action_8
action_30 (19) = happyShift action_9
action_30 (20) = happyShift action_10
action_30 (25) = happyShift action_11
action_30 (26) = happyShift action_12
action_30 (10) = happyGoto action_45
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (15) = happyShift action_6
action_31 (17) = happyShift action_7
action_31 (18) = happyShift action_8
action_31 (19) = happyShift action_9
action_31 (20) = happyShift action_10
action_31 (25) = happyShift action_11
action_31 (26) = happyShift action_12
action_31 (9) = happyGoto action_44
action_31 (10) = happyGoto action_5
action_31 _ = happyReduce_13

action_32 (10) = happyGoto action_32
action_32 _ = happyReduce_24

action_33 (15) = happyShift action_6
action_33 (17) = happyShift action_7
action_33 (18) = happyShift action_8
action_33 (19) = happyShift action_9
action_33 (20) = happyShift action_43
action_33 (25) = happyShift action_11
action_33 (26) = happyShift action_12
action_33 (10) = happyGoto action_42
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (15) = happyShift action_6
action_34 (17) = happyShift action_7
action_34 (18) = happyShift action_8
action_34 (19) = happyShift action_9
action_34 (20) = happyShift action_41
action_34 (25) = happyShift action_11
action_34 (26) = happyShift action_12
action_34 (10) = happyGoto action_40
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (15) = happyShift action_6
action_35 (17) = happyShift action_7
action_35 (18) = happyShift action_8
action_35 (19) = happyShift action_9
action_35 (20) = happyShift action_39
action_35 (25) = happyShift action_11
action_35 (26) = happyShift action_12
action_35 (10) = happyGoto action_38
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (15) = happyShift action_6
action_36 (17) = happyShift action_7
action_36 (18) = happyShift action_8
action_36 (19) = happyShift action_9
action_36 (20) = happyShift action_10
action_36 (25) = happyShift action_11
action_36 (26) = happyShift action_12
action_36 (27) = happyShift action_13
action_36 (8) = happyGoto action_37
action_36 (9) = happyGoto action_4
action_36 (10) = happyGoto action_5
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (31) = happyShift action_19
action_37 (7) = happyGoto action_65
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (26) = happyShift action_12
action_38 (10) = happyGoto action_32
action_38 _ = happyReduce_22

action_39 (15) = happyShift action_6
action_39 (17) = happyShift action_7
action_39 (18) = happyShift action_8
action_39 (19) = happyShift action_9
action_39 (20) = happyShift action_10
action_39 (25) = happyShift action_11
action_39 (26) = happyShift action_12
action_39 (10) = happyGoto action_64
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (19) = happyShift action_35
action_40 (26) = happyShift action_12
action_40 (10) = happyGoto action_32
action_40 _ = happyReduce_20

action_41 (15) = happyShift action_6
action_41 (17) = happyShift action_7
action_41 (18) = happyShift action_8
action_41 (19) = happyShift action_9
action_41 (20) = happyShift action_10
action_41 (25) = happyShift action_11
action_41 (26) = happyShift action_12
action_41 (10) = happyGoto action_63
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (19) = happyShift action_35
action_42 (26) = happyShift action_12
action_42 (10) = happyGoto action_32
action_42 _ = happyReduce_18

action_43 (15) = happyShift action_6
action_43 (17) = happyShift action_7
action_43 (18) = happyShift action_8
action_43 (19) = happyShift action_9
action_43 (20) = happyShift action_10
action_43 (25) = happyShift action_11
action_43 (26) = happyShift action_12
action_43 (10) = happyGoto action_62
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_14

action_45 (15) = happyShift action_6
action_45 (17) = happyShift action_33
action_45 (18) = happyShift action_34
action_45 (19) = happyShift action_35
action_45 (20) = happyShift action_10
action_45 (24) = happyShift action_61
action_45 (25) = happyShift action_11
action_45 (26) = happyShift action_12
action_45 (10) = happyGoto action_32
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (15) = happyShift action_6
action_46 (17) = happyShift action_33
action_46 (18) = happyShift action_34
action_46 (19) = happyShift action_35
action_46 (20) = happyShift action_10
action_46 (24) = happyShift action_60
action_46 (25) = happyShift action_11
action_46 (26) = happyShift action_12
action_46 (10) = happyGoto action_32
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (15) = happyShift action_6
action_47 (17) = happyShift action_33
action_47 (18) = happyShift action_34
action_47 (19) = happyShift action_35
action_47 (20) = happyShift action_10
action_47 (24) = happyShift action_59
action_47 (25) = happyShift action_11
action_47 (26) = happyShift action_12
action_47 (10) = happyGoto action_32
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_15

action_49 (15) = happyShift action_6
action_49 (17) = happyShift action_7
action_49 (18) = happyShift action_8
action_49 (19) = happyShift action_9
action_49 (20) = happyShift action_10
action_49 (25) = happyShift action_11
action_49 (26) = happyShift action_12
action_49 (10) = happyGoto action_58
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (15) = happyShift action_57
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (15) = happyShift action_56
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (22) = happyShift action_55
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (15) = happyShift action_6
action_53 (17) = happyShift action_7
action_53 (18) = happyShift action_8
action_53 (19) = happyShift action_9
action_53 (20) = happyShift action_10
action_53 (25) = happyShift action_11
action_53 (26) = happyShift action_12
action_53 (27) = happyShift action_13
action_53 (8) = happyGoto action_54
action_53 (9) = happyGoto action_4
action_53 (10) = happyGoto action_5
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (31) = happyShift action_19
action_54 (7) = happyGoto action_74
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (20) = happyShift action_73
action_55 (11) = happyGoto action_71
action_55 (12) = happyGoto action_72
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_9

action_57 _ = happyReduce_10

action_58 (15) = happyShift action_6
action_58 (17) = happyShift action_33
action_58 (18) = happyShift action_34
action_58 (19) = happyShift action_35
action_58 (20) = happyShift action_10
action_58 (21) = happyShift action_70
action_58 (25) = happyShift action_11
action_58 (26) = happyShift action_12
action_58 (10) = happyGoto action_32
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (15) = happyShift action_6
action_59 (17) = happyShift action_7
action_59 (18) = happyShift action_8
action_59 (19) = happyShift action_9
action_59 (20) = happyShift action_10
action_59 (25) = happyShift action_11
action_59 (26) = happyShift action_12
action_59 (10) = happyGoto action_69
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (15) = happyShift action_6
action_60 (17) = happyShift action_7
action_60 (18) = happyShift action_8
action_60 (19) = happyShift action_9
action_60 (20) = happyShift action_10
action_60 (25) = happyShift action_11
action_60 (26) = happyShift action_12
action_60 (10) = happyGoto action_68
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (15) = happyShift action_6
action_61 (17) = happyShift action_7
action_61 (18) = happyShift action_8
action_61 (19) = happyShift action_9
action_61 (20) = happyShift action_10
action_61 (25) = happyShift action_11
action_61 (26) = happyShift action_12
action_61 (10) = happyGoto action_67
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (15) = happyShift action_6
action_62 (17) = happyShift action_33
action_62 (18) = happyShift action_34
action_62 (19) = happyShift action_35
action_62 (20) = happyShift action_10
action_62 (21) = happyShift action_48
action_62 (24) = happyShift action_61
action_62 (25) = happyShift action_11
action_62 (26) = happyShift action_12
action_62 (10) = happyGoto action_32
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (15) = happyShift action_6
action_63 (17) = happyShift action_33
action_63 (18) = happyShift action_34
action_63 (19) = happyShift action_35
action_63 (20) = happyShift action_10
action_63 (21) = happyShift action_48
action_63 (24) = happyShift action_60
action_63 (25) = happyShift action_11
action_63 (26) = happyShift action_12
action_63 (10) = happyGoto action_32
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (15) = happyShift action_6
action_64 (17) = happyShift action_33
action_64 (18) = happyShift action_34
action_64 (19) = happyShift action_35
action_64 (20) = happyShift action_10
action_64 (21) = happyShift action_48
action_64 (24) = happyShift action_59
action_64 (25) = happyShift action_11
action_64 (26) = happyShift action_12
action_64 (10) = happyGoto action_32
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (15) = happyShift action_6
action_65 (17) = happyShift action_7
action_65 (18) = happyShift action_8
action_65 (19) = happyShift action_9
action_65 (20) = happyShift action_10
action_65 (25) = happyShift action_11
action_65 (26) = happyShift action_12
action_65 (27) = happyShift action_13
action_65 (8) = happyGoto action_66
action_65 (9) = happyGoto action_4
action_65 (10) = happyGoto action_5
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_2

action_67 (15) = happyShift action_6
action_67 (17) = happyShift action_33
action_67 (18) = happyShift action_34
action_67 (19) = happyShift action_35
action_67 (20) = happyShift action_10
action_67 (21) = happyShift action_81
action_67 (25) = happyShift action_11
action_67 (26) = happyShift action_12
action_67 (10) = happyGoto action_32
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (15) = happyShift action_6
action_68 (17) = happyShift action_33
action_68 (18) = happyShift action_34
action_68 (19) = happyShift action_35
action_68 (20) = happyShift action_10
action_68 (21) = happyShift action_80
action_68 (25) = happyShift action_11
action_68 (26) = happyShift action_12
action_68 (10) = happyGoto action_32
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (15) = happyShift action_6
action_69 (17) = happyShift action_33
action_69 (18) = happyShift action_34
action_69 (19) = happyShift action_35
action_69 (20) = happyShift action_10
action_69 (21) = happyShift action_79
action_69 (25) = happyShift action_11
action_69 (26) = happyShift action_12
action_69 (10) = happyGoto action_32
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_25

action_71 (23) = happyShift action_77
action_71 (24) = happyShift action_78
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_27

action_73 (22) = happyShift action_76
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (15) = happyShift action_6
action_74 (17) = happyShift action_7
action_74 (18) = happyShift action_8
action_74 (19) = happyShift action_9
action_74 (20) = happyShift action_10
action_74 (25) = happyShift action_11
action_74 (26) = happyShift action_12
action_74 (27) = happyShift action_13
action_74 (8) = happyGoto action_75
action_74 (9) = happyGoto action_4
action_74 (10) = happyGoto action_5
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (31) = happyShift action_19
action_75 (7) = happyGoto action_85
action_75 _ = happyReduce_3

action_76 (15) = happyShift action_6
action_76 (17) = happyShift action_7
action_76 (18) = happyShift action_8
action_76 (19) = happyShift action_9
action_76 (20) = happyShift action_10
action_76 (25) = happyShift action_11
action_76 (26) = happyShift action_12
action_76 (10) = happyGoto action_83
action_76 (13) = happyGoto action_84
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_8

action_78 (20) = happyShift action_73
action_78 (12) = happyGoto action_82
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_23

action_80 _ = happyReduce_21

action_81 _ = happyReduce_19

action_82 _ = happyReduce_26

action_83 (15) = happyShift action_6
action_83 (17) = happyShift action_33
action_83 (18) = happyShift action_34
action_83 (19) = happyShift action_35
action_83 (20) = happyShift action_10
action_83 (25) = happyShift action_11
action_83 (26) = happyShift action_12
action_83 (10) = happyGoto action_32
action_83 _ = happyReduce_30

action_84 (23) = happyShift action_86
action_84 (24) = happyShift action_87
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_4

action_86 (24) = happyShift action_89
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (15) = happyShift action_6
action_87 (17) = happyShift action_7
action_87 (18) = happyShift action_8
action_87 (19) = happyShift action_9
action_87 (20) = happyShift action_10
action_87 (25) = happyShift action_11
action_87 (26) = happyShift action_12
action_87 (10) = happyGoto action_88
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (15) = happyShift action_6
action_88 (17) = happyShift action_33
action_88 (18) = happyShift action_34
action_88 (19) = happyShift action_35
action_88 (20) = happyShift action_10
action_88 (25) = happyShift action_11
action_88 (26) = happyShift action_12
action_88 (10) = happyGoto action_32
action_88 _ = happyReduce_29

action_89 (22) = happyShift action_90
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (15) = happyShift action_6
action_90 (17) = happyShift action_7
action_90 (18) = happyShift action_8
action_90 (19) = happyShift action_9
action_90 (20) = happyShift action_10
action_90 (25) = happyShift action_11
action_90 (26) = happyShift action_12
action_90 (10) = happyGoto action_83
action_90 (13) = happyGoto action_91
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (23) = happyShift action_92
action_91 (24) = happyShift action_87
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (21) = happyShift action_93
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_28

happyReduce_2 = happyReduce 5 5 happyReduction_2
happyReduction_2 ((HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 ((happy_var_1, happy_var_3, happy_var_5)
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 6 5 happyReduction_3
happyReduction_3 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 ((happy_var_2, happy_var_4, happy_var_6)
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 7 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 ((happy_var_2, happy_var_4, happy_var_6)
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  7 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn7
		 (
	)

happyReduce_7 = happySpecReduce_2  7 happyReduction_7
happyReduction_7 _
	_
	 =  HappyAbsSyn7
		 (
	)

happyReduce_8 = happyReduce 6 8 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (MtPst happy_var_5
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 4 8 happyReduction_9
happyReduction_9 ((HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (MtPstSize happy_var_4
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 4 8 happyReduction_10
happyReduction_10 ((HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (MtInCnt happy_var_4
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (MtFuncs happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  9 happyReduction_12
happyReduction_12 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  9 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 : happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  10 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  10 happyReduction_16
happyReduction_16 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn10
		 (ExInt happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  10 happyReduction_17
happyReduction_17 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn10
		 (ExVar happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (ExSum (happy_var_1) (happy_var_3)
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 6 10 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (ExSum (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  10 happyReduction_20
happyReduction_20 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (ExSub (happy_var_1) (happy_var_3)
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happyReduce 6 10 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (ExSub (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (ExMult (happy_var_1) (happy_var_3)
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 6 10 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (ExMult (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_2  10 happyReduction_24
happyReduction_24 (HappyAbsSyn10  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (ExApp (happy_var_1) (happy_var_2)
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happyReduce 5 10 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (ExLam (happy_var_2) (happy_var_4)
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_3  11 happyReduction_26
happyReduction_26 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_3 : happy_var_1
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  11 happyReduction_27
happyReduction_27 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happyReduce 9 12 happyReduction_28
happyReduction_28 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 ((happy_var_3 , happy_var_7)
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_3  13 happyReduction_29
happyReduction_29 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_3 : happy_var_1
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  13 happyReduction_30
happyReduction_30 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  14 happyReduction_31
happyReduction_31 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn14
		 ([ExInt happy_var_1]
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  14 happyReduction_32
happyReduction_32 (HappyAbsSyn14  happy_var_2)
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn14
		 (ExInt happy_var_1 : happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 32 32 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 15;
	TokenEq _ -> cont 16;
	TokenPlus _ -> cont 17;
	TokenMinus _ -> cont 18;
	TokenTimes _ -> cont 19;
	TokenLParen _ -> cont 20;
	TokenRParen _ -> cont 21;
	TokenLParenSq _ -> cont 22;
	TokenRParenSq _ -> cont 23;
	TokenSeq _ -> cont 24;
	TokenVar _ happy_dollar_dollar -> cont 25;
	TokenLam _ -> cont 26;
	TokenSet _ -> cont 27;
	TokenPast _ -> cont 28;
	TokenPastCount _ -> cont 29;
	TokenInStreamCount _ -> cont 30;
	TokenEndLine _ -> cont 31;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 32 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn5 z -> happyReturn z; _other -> notHappyAtAll })

parseInput tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn6 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at: " ++ (tokenPosn t))

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
          | Cl String Expr Environment
          deriving (Show,Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4










































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/home/hp/haskell-platform/build/ghc-bindist/local/lib/ghc-8.4.3/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc6580_0/ghc_2.h" #-}




















































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
