{-# OPTIONS_GHC -w #-}
module GrammarStream where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,347) ([62464,464,0,64,0,32,0,0,0,0,13373,4,0,0,2,32768,0,8192,0,3904,13,0,1,0,0,4096,0,57344,8192,0,2048,0,512,0,2048,0,32,0,53748,0,13373,16384,3343,53248,835,0,0,15616,52,3904,13,17360,3,53492,0,0,0,0,53248,835,16384,0,15616,52,1024,0,17360,3,55540,0,13885,16384,3471,0,0,62464,208,15616,52,64,0,16,0,512,0,32,0,0,0,0,62464,209,15616,60,3904,13,17360,3,53492,0,13949,16384,3487,53248,871,62464,209,32000,52,8000,13,17360,3,0,0,768,0,0,0,8,62464,208,0,0,2048,0,448,0,0,0,0,0,0,0,0,62464,208,0,3,32768,0,17360,3,53492,0,128,16384,3343,0,48,0,1,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Meta","ExprList","Expr","MappingExps","MappingExp","Exprs","IntExprs","int","'='","'+'","'-'","'*'","'('","')'","'['","']'","','","let","in","var","lam","set","past","pastCnt","SCount","eol","%eof"]
        bit_start = st * 30
        bit_end = (st + 1) * 30
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..29]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (11) = happyShift action_6
action_0 (13) = happyShift action_7
action_0 (14) = happyShift action_8
action_0 (15) = happyShift action_9
action_0 (16) = happyShift action_10
action_0 (21) = happyShift action_11
action_0 (23) = happyShift action_12
action_0 (24) = happyShift action_13
action_0 (25) = happyShift action_14
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (25) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (26) = happyShift action_15
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (30) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_4

action_5 (11) = happyShift action_6
action_5 (13) = happyShift action_25
action_5 (14) = happyShift action_26
action_5 (15) = happyShift action_27
action_5 (16) = happyShift action_10
action_5 (21) = happyShift action_11
action_5 (23) = happyShift action_12
action_5 (24) = happyShift action_13
action_5 (29) = happyShift action_28
action_5 (6) = happyGoto action_24
action_5 _ = happyReduce_5

action_6 _ = happyReduce_8

action_7 (16) = happyShift action_23
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (16) = happyShift action_22
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (16) = happyShift action_21
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (11) = happyShift action_6
action_10 (13) = happyShift action_7
action_10 (14) = happyShift action_8
action_10 (15) = happyShift action_9
action_10 (16) = happyShift action_10
action_10 (21) = happyShift action_11
action_10 (23) = happyShift action_12
action_10 (24) = happyShift action_13
action_10 (6) = happyGoto action_20
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (23) = happyShift action_19
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_9

action_13 (23) = happyShift action_18
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (26) = happyShift action_15
action_14 (27) = happyShift action_16
action_14 (28) = happyShift action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (12) = happyShift action_44
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (12) = happyShift action_43
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (12) = happyShift action_42
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (16) = happyShift action_41
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (12) = happyShift action_40
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (11) = happyShift action_6
action_20 (13) = happyShift action_25
action_20 (14) = happyShift action_26
action_20 (15) = happyShift action_27
action_20 (16) = happyShift action_10
action_20 (17) = happyShift action_39
action_20 (21) = happyShift action_11
action_20 (23) = happyShift action_12
action_20 (24) = happyShift action_13
action_20 (6) = happyGoto action_24
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (11) = happyShift action_6
action_21 (13) = happyShift action_7
action_21 (14) = happyShift action_8
action_21 (15) = happyShift action_9
action_21 (16) = happyShift action_10
action_21 (21) = happyShift action_11
action_21 (23) = happyShift action_12
action_21 (24) = happyShift action_13
action_21 (6) = happyGoto action_38
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (11) = happyShift action_6
action_22 (13) = happyShift action_7
action_22 (14) = happyShift action_8
action_22 (15) = happyShift action_9
action_22 (16) = happyShift action_10
action_22 (21) = happyShift action_11
action_22 (23) = happyShift action_12
action_22 (24) = happyShift action_13
action_22 (6) = happyGoto action_37
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (11) = happyShift action_6
action_23 (13) = happyShift action_7
action_23 (14) = happyShift action_8
action_23 (15) = happyShift action_9
action_23 (16) = happyShift action_10
action_23 (21) = happyShift action_11
action_23 (23) = happyShift action_12
action_23 (24) = happyShift action_13
action_23 (6) = happyGoto action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyGoto action_24
action_24 _ = happyReduce_18

action_25 (11) = happyShift action_6
action_25 (13) = happyShift action_7
action_25 (14) = happyShift action_8
action_25 (15) = happyShift action_9
action_25 (16) = happyShift action_35
action_25 (21) = happyShift action_11
action_25 (23) = happyShift action_12
action_25 (24) = happyShift action_13
action_25 (6) = happyGoto action_34
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_6
action_26 (13) = happyShift action_7
action_26 (14) = happyShift action_8
action_26 (15) = happyShift action_9
action_26 (16) = happyShift action_33
action_26 (21) = happyShift action_11
action_26 (23) = happyShift action_12
action_26 (24) = happyShift action_13
action_26 (6) = happyGoto action_32
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (11) = happyShift action_6
action_27 (13) = happyShift action_7
action_27 (14) = happyShift action_8
action_27 (15) = happyShift action_9
action_27 (16) = happyShift action_31
action_27 (21) = happyShift action_11
action_27 (23) = happyShift action_12
action_27 (24) = happyShift action_13
action_27 (6) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_6
action_28 (13) = happyShift action_7
action_28 (14) = happyShift action_8
action_28 (15) = happyShift action_9
action_28 (16) = happyShift action_10
action_28 (21) = happyShift action_11
action_28 (23) = happyShift action_12
action_28 (24) = happyShift action_13
action_28 (5) = happyGoto action_29
action_28 (6) = happyGoto action_5
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_6

action_30 (6) = happyGoto action_24
action_30 _ = happyReduce_14

action_31 (11) = happyShift action_6
action_31 (13) = happyShift action_7
action_31 (14) = happyShift action_8
action_31 (15) = happyShift action_9
action_31 (16) = happyShift action_10
action_31 (21) = happyShift action_11
action_31 (23) = happyShift action_12
action_31 (24) = happyShift action_13
action_31 (6) = happyGoto action_55
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (15) = happyShift action_27
action_32 (6) = happyGoto action_24
action_32 _ = happyReduce_12

action_33 (11) = happyShift action_6
action_33 (13) = happyShift action_7
action_33 (14) = happyShift action_8
action_33 (15) = happyShift action_9
action_33 (16) = happyShift action_10
action_33 (21) = happyShift action_11
action_33 (23) = happyShift action_12
action_33 (24) = happyShift action_13
action_33 (6) = happyGoto action_54
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (15) = happyShift action_27
action_34 (6) = happyGoto action_24
action_34 _ = happyReduce_10

action_35 (11) = happyShift action_6
action_35 (13) = happyShift action_7
action_35 (14) = happyShift action_8
action_35 (15) = happyShift action_9
action_35 (16) = happyShift action_10
action_35 (21) = happyShift action_11
action_35 (23) = happyShift action_12
action_35 (24) = happyShift action_13
action_35 (6) = happyGoto action_53
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (11) = happyShift action_6
action_36 (13) = happyShift action_25
action_36 (14) = happyShift action_26
action_36 (15) = happyShift action_27
action_36 (16) = happyShift action_10
action_36 (20) = happyShift action_52
action_36 (21) = happyShift action_11
action_36 (23) = happyShift action_12
action_36 (24) = happyShift action_13
action_36 (6) = happyGoto action_24
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (11) = happyShift action_6
action_37 (13) = happyShift action_25
action_37 (14) = happyShift action_26
action_37 (15) = happyShift action_27
action_37 (16) = happyShift action_10
action_37 (20) = happyShift action_51
action_37 (21) = happyShift action_11
action_37 (23) = happyShift action_12
action_37 (24) = happyShift action_13
action_37 (6) = happyGoto action_24
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (11) = happyShift action_6
action_38 (13) = happyShift action_25
action_38 (14) = happyShift action_26
action_38 (15) = happyShift action_27
action_38 (16) = happyShift action_10
action_38 (20) = happyShift action_50
action_38 (21) = happyShift action_11
action_38 (23) = happyShift action_12
action_38 (24) = happyShift action_13
action_38 (6) = happyGoto action_24
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_7

action_40 (11) = happyShift action_6
action_40 (13) = happyShift action_7
action_40 (14) = happyShift action_8
action_40 (15) = happyShift action_9
action_40 (16) = happyShift action_10
action_40 (21) = happyShift action_11
action_40 (23) = happyShift action_12
action_40 (24) = happyShift action_13
action_40 (6) = happyGoto action_49
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (11) = happyShift action_6
action_41 (13) = happyShift action_7
action_41 (14) = happyShift action_8
action_41 (15) = happyShift action_9
action_41 (16) = happyShift action_10
action_41 (21) = happyShift action_11
action_41 (23) = happyShift action_12
action_41 (24) = happyShift action_13
action_41 (6) = happyGoto action_48
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (11) = happyShift action_47
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (11) = happyShift action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (18) = happyShift action_45
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (16) = happyShift action_63
action_45 (7) = happyGoto action_61
action_45 (8) = happyGoto action_62
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_2

action_47 _ = happyReduce_3

action_48 (11) = happyShift action_6
action_48 (13) = happyShift action_25
action_48 (14) = happyShift action_26
action_48 (15) = happyShift action_27
action_48 (16) = happyShift action_10
action_48 (17) = happyShift action_60
action_48 (21) = happyShift action_11
action_48 (23) = happyShift action_12
action_48 (24) = happyShift action_13
action_48 (6) = happyGoto action_24
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (11) = happyShift action_6
action_49 (13) = happyShift action_25
action_49 (14) = happyShift action_26
action_49 (15) = happyShift action_27
action_49 (16) = happyShift action_10
action_49 (21) = happyShift action_11
action_49 (22) = happyShift action_59
action_49 (23) = happyShift action_12
action_49 (24) = happyShift action_13
action_49 (6) = happyGoto action_24
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (11) = happyShift action_6
action_50 (13) = happyShift action_7
action_50 (14) = happyShift action_8
action_50 (15) = happyShift action_9
action_50 (16) = happyShift action_10
action_50 (21) = happyShift action_11
action_50 (23) = happyShift action_12
action_50 (24) = happyShift action_13
action_50 (6) = happyGoto action_58
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (11) = happyShift action_6
action_51 (13) = happyShift action_7
action_51 (14) = happyShift action_8
action_51 (15) = happyShift action_9
action_51 (16) = happyShift action_10
action_51 (21) = happyShift action_11
action_51 (23) = happyShift action_12
action_51 (24) = happyShift action_13
action_51 (6) = happyGoto action_57
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (11) = happyShift action_6
action_52 (13) = happyShift action_7
action_52 (14) = happyShift action_8
action_52 (15) = happyShift action_9
action_52 (16) = happyShift action_10
action_52 (21) = happyShift action_11
action_52 (23) = happyShift action_12
action_52 (24) = happyShift action_13
action_52 (6) = happyGoto action_56
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (11) = happyShift action_6
action_53 (13) = happyShift action_25
action_53 (14) = happyShift action_26
action_53 (15) = happyShift action_27
action_53 (16) = happyShift action_10
action_53 (17) = happyShift action_39
action_53 (20) = happyShift action_52
action_53 (21) = happyShift action_11
action_53 (23) = happyShift action_12
action_53 (24) = happyShift action_13
action_53 (6) = happyGoto action_24
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (11) = happyShift action_6
action_54 (13) = happyShift action_25
action_54 (14) = happyShift action_26
action_54 (15) = happyShift action_27
action_54 (16) = happyShift action_10
action_54 (17) = happyShift action_39
action_54 (20) = happyShift action_51
action_54 (21) = happyShift action_11
action_54 (23) = happyShift action_12
action_54 (24) = happyShift action_13
action_54 (6) = happyGoto action_24
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (11) = happyShift action_6
action_55 (13) = happyShift action_25
action_55 (14) = happyShift action_26
action_55 (15) = happyShift action_27
action_55 (16) = happyShift action_10
action_55 (17) = happyShift action_39
action_55 (20) = happyShift action_50
action_55 (21) = happyShift action_11
action_55 (23) = happyShift action_12
action_55 (24) = happyShift action_13
action_55 (6) = happyGoto action_24
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (11) = happyShift action_6
action_56 (13) = happyShift action_25
action_56 (14) = happyShift action_26
action_56 (15) = happyShift action_27
action_56 (16) = happyShift action_10
action_56 (17) = happyShift action_70
action_56 (21) = happyShift action_11
action_56 (23) = happyShift action_12
action_56 (24) = happyShift action_13
action_56 (6) = happyGoto action_24
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (11) = happyShift action_6
action_57 (13) = happyShift action_25
action_57 (14) = happyShift action_26
action_57 (15) = happyShift action_27
action_57 (16) = happyShift action_10
action_57 (17) = happyShift action_69
action_57 (21) = happyShift action_11
action_57 (23) = happyShift action_12
action_57 (24) = happyShift action_13
action_57 (6) = happyGoto action_24
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (11) = happyShift action_6
action_58 (13) = happyShift action_25
action_58 (14) = happyShift action_26
action_58 (15) = happyShift action_27
action_58 (16) = happyShift action_10
action_58 (17) = happyShift action_68
action_58 (21) = happyShift action_11
action_58 (23) = happyShift action_12
action_58 (24) = happyShift action_13
action_58 (6) = happyGoto action_24
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (11) = happyShift action_6
action_59 (13) = happyShift action_7
action_59 (14) = happyShift action_8
action_59 (15) = happyShift action_9
action_59 (16) = happyShift action_10
action_59 (21) = happyShift action_11
action_59 (23) = happyShift action_12
action_59 (24) = happyShift action_13
action_59 (6) = happyGoto action_67
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_16

action_61 (19) = happyShift action_65
action_61 (20) = happyShift action_66
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_20

action_63 (18) = happyShift action_64
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (11) = happyShift action_6
action_64 (13) = happyShift action_7
action_64 (14) = happyShift action_8
action_64 (15) = happyShift action_9
action_64 (16) = happyShift action_10
action_64 (21) = happyShift action_11
action_64 (23) = happyShift action_12
action_64 (24) = happyShift action_13
action_64 (6) = happyGoto action_72
action_64 (9) = happyGoto action_73
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_1

action_66 (16) = happyShift action_63
action_66 (8) = happyGoto action_71
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (11) = happyFail []
action_67 (13) = happyShift action_25
action_67 (14) = happyShift action_26
action_67 (15) = happyShift action_27
action_67 (16) = happyFail []
action_67 (23) = happyFail []
action_67 (6) = happyGoto action_24
action_67 _ = happyReduce_17

action_68 _ = happyReduce_15

action_69 _ = happyReduce_13

action_70 _ = happyReduce_11

action_71 _ = happyReduce_19

action_72 (11) = happyShift action_6
action_72 (13) = happyShift action_25
action_72 (14) = happyShift action_26
action_72 (15) = happyShift action_27
action_72 (16) = happyShift action_10
action_72 (21) = happyShift action_11
action_72 (23) = happyShift action_12
action_72 (24) = happyShift action_13
action_72 (6) = happyGoto action_24
action_72 _ = happyReduce_23

action_73 (19) = happyShift action_74
action_73 (20) = happyShift action_75
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (20) = happyShift action_77
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (11) = happyShift action_6
action_75 (13) = happyShift action_7
action_75 (14) = happyShift action_8
action_75 (15) = happyShift action_9
action_75 (16) = happyShift action_10
action_75 (21) = happyShift action_11
action_75 (23) = happyShift action_12
action_75 (24) = happyShift action_13
action_75 (6) = happyGoto action_76
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (11) = happyShift action_6
action_76 (13) = happyShift action_25
action_76 (14) = happyShift action_26
action_76 (15) = happyShift action_27
action_76 (16) = happyShift action_10
action_76 (21) = happyShift action_11
action_76 (23) = happyShift action_12
action_76 (24) = happyShift action_13
action_76 (6) = happyGoto action_24
action_76 _ = happyReduce_22

action_77 (18) = happyShift action_78
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (11) = happyShift action_6
action_78 (13) = happyShift action_7
action_78 (14) = happyShift action_8
action_78 (15) = happyShift action_9
action_78 (16) = happyShift action_10
action_78 (21) = happyShift action_11
action_78 (23) = happyShift action_12
action_78 (24) = happyShift action_13
action_78 (6) = happyGoto action_72
action_78 (9) = happyGoto action_79
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (19) = happyShift action_80
action_79 (20) = happyShift action_75
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (17) = happyShift action_81
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_21

happyReduce_1 = happyReduce 6 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (MtPst happy_var_5
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 4 4 happyReduction_2
happyReduction_2 ((HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (MtPstSize happy_var_4
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 4 4 happyReduction_3
happyReduction_3 ((HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (MtInCnt happy_var_4
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (MtFuncs happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  6 happyReduction_7
happyReduction_7 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (ExInt happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (ExVar happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExSum (happy_var_1) (happy_var_3)
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 6 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExSum (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  6 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExSub (happy_var_1) (happy_var_3)
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 6 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExSub (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExMult (happy_var_1) (happy_var_3)
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 6 6 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExMult (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 5 6 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExLam (happy_var_2) (happy_var_4)
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 6 6 happyReduction_17
happyReduction_17 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExLet happy_var_2 (happy_var_4) (happy_var_6)
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_2  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExApp (happy_var_1) (happy_var_2)
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  7 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  7 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 9 8 happyReduction_21
happyReduction_21 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 ((happy_var_3 , happy_var_7)
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_3  9 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_3 : happy_var_1
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  9 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  10 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  10 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_2 : happy_var_1
	)
happyReduction_25 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 30 30 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 11;
	TokenEq _ -> cont 12;
	TokenPlus _ -> cont 13;
	TokenMinus _ -> cont 14;
	TokenTimes _ -> cont 15;
	TokenLParen _ -> cont 16;
	TokenRParen _ -> cont 17;
	TokenLParenSq _ -> cont 18;
	TokenRParenSq _ -> cont 19;
	TokenSeq _ -> cont 20;
	TokenLet _ -> cont 21;
	TokenIn _ -> cont 22;
	TokenVar _ happy_dollar_dollar -> cont 23;
	TokenLam _ -> cont 24;
	TokenSet _ -> cont 25;
	TokenPast _ -> cont 26;
	TokenPastCount _ -> cont 27;
	TokenInStreamCount _ -> cont 28;
	TokenEndLine _ -> cont 29;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 30 tk tks = happyError' (tks, explist)
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
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
          | Cl String Expr Environment
          deriving (Show,Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}

















































































































































































































-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 











data Happy_IntList = HappyCons Int Happy_IntList




















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

