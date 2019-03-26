{-# OPTIONS_GHC -w #-}
module Grammar where 
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
happyExpList = Happy_Data_Array.listArray (0,177) ([62464,8656,31232,4328,15616,2164,0,512,0,0,1024,0,512,0,256,0,53492,32,8192,0,0,0,2048,0,57344,0,4,0,0,0,8192,62464,8400,0,2048,15616,2100,7808,1050,3904,525,34720,262,17360,131,16,0,8,0,4,0,32,0,1,0,23,40961,1671,53249,33603,59392,16801,62464,8656,0,0,7168,1026,3584,513,34560,256,0,0,17360,131,41448,65,4,0,2,0,128,0,46,2,0,0,0,0,1,32768,0,32768,0,16384,0,0,0,0,0,5888,256,896,129,17360,131,41448,65,53492,32,184,8,92,4,46,16386,3343,2,0,0,48,0,0,0,2,31232,4200,23552,1024,7808,1050,0,0,1024,0,448,0,0,0,0,0,0,0,0,0,14,2,192,0,0,0,32,59392,16801,28672,4096,0,1,15616,2100,32768,1,4096,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Meta","Expr","MappingExps","MappingExp","Exprs","IntExprs","int","'='","'+'","'-'","'*'","'('","')'","'['","']'","','","let","in","var","lam","set","past","pastCnt","SCount","eol","app","%eof"]
        bit_start = st * 31
        bit_end = (st + 1) * 31
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..30]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (11) = happyShift action_4
action_0 (13) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (15) = happyShift action_7
action_0 (16) = happyShift action_8
action_0 (21) = happyShift action_9
action_0 (23) = happyShift action_10
action_0 (24) = happyShift action_11
action_0 (25) = happyShift action_12
action_0 (30) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_15
action_0 (10) = happyGoto action_16
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_4
action_1 (13) = happyShift action_5
action_1 (14) = happyShift action_6
action_1 (15) = happyShift action_7
action_1 (16) = happyShift action_8
action_1 (21) = happyShift action_9
action_1 (23) = happyShift action_10
action_1 (24) = happyShift action_11
action_1 (25) = happyShift action_12
action_1 (30) = happyShift action_13
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (11) = happyShift action_4
action_2 (13) = happyShift action_5
action_2 (14) = happyShift action_6
action_2 (15) = happyShift action_7
action_2 (16) = happyShift action_8
action_2 (21) = happyShift action_9
action_2 (23) = happyShift action_10
action_2 (24) = happyShift action_11
action_2 (25) = happyShift action_12
action_2 (30) = happyShift action_13
action_2 (5) = happyGoto action_32
action_2 (6) = happyGoto action_3
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (13) = happyShift action_18
action_3 (14) = happyShift action_19
action_3 (15) = happyShift action_20
action_3 (29) = happyShift action_21
action_3 _ = happyReduce_6

action_4 _ = happyReduce_8

action_5 (16) = happyShift action_31
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (16) = happyShift action_30
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (16) = happyShift action_29
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (11) = happyShift action_4
action_8 (13) = happyShift action_5
action_8 (14) = happyShift action_6
action_8 (15) = happyShift action_7
action_8 (16) = happyShift action_8
action_8 (21) = happyShift action_9
action_8 (23) = happyShift action_10
action_8 (24) = happyShift action_11
action_8 (30) = happyShift action_13
action_8 (6) = happyGoto action_28
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (23) = happyShift action_27
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_9

action_11 (23) = happyShift action_26
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (26) = happyShift action_23
action_12 (27) = happyShift action_24
action_12 (28) = happyShift action_25
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (16) = happyShift action_22
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (31) = happyAccept
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (11) = happyReduce_25
action_15 (13) = happyShift action_18
action_15 (14) = happyShift action_19
action_15 (15) = happyShift action_20
action_15 (16) = happyReduce_25
action_15 (21) = happyReduce_25
action_15 (23) = happyReduce_25
action_15 (24) = happyReduce_25
action_15 (29) = happyShift action_21
action_15 (30) = happyReduce_25
action_15 (31) = happyReduce_25
action_15 _ = happyReduce_6

action_16 (11) = happyShift action_4
action_16 (13) = happyShift action_5
action_16 (14) = happyShift action_6
action_16 (15) = happyShift action_7
action_16 (16) = happyShift action_8
action_16 (21) = happyShift action_9
action_16 (23) = happyShift action_10
action_16 (24) = happyShift action_11
action_16 (30) = happyShift action_13
action_16 (6) = happyGoto action_17
action_16 _ = happyReduce_2

action_17 (13) = happyShift action_18
action_17 (14) = happyShift action_19
action_17 (15) = happyShift action_20
action_17 (29) = happyShift action_21
action_17 _ = happyReduce_26

action_18 (11) = happyShift action_4
action_18 (13) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (15) = happyShift action_7
action_18 (16) = happyShift action_8
action_18 (21) = happyShift action_9
action_18 (23) = happyShift action_10
action_18 (24) = happyShift action_11
action_18 (30) = happyShift action_13
action_18 (6) = happyGoto action_47
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (11) = happyShift action_4
action_19 (13) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (15) = happyShift action_7
action_19 (16) = happyShift action_8
action_19 (21) = happyShift action_9
action_19 (23) = happyShift action_10
action_19 (24) = happyShift action_11
action_19 (30) = happyShift action_13
action_19 (6) = happyGoto action_46
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (11) = happyShift action_4
action_20 (13) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (15) = happyShift action_7
action_20 (16) = happyShift action_8
action_20 (21) = happyShift action_9
action_20 (23) = happyShift action_10
action_20 (24) = happyShift action_11
action_20 (30) = happyShift action_13
action_20 (6) = happyGoto action_45
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (11) = happyShift action_4
action_21 (13) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (15) = happyShift action_7
action_21 (16) = happyShift action_8
action_21 (21) = happyShift action_9
action_21 (23) = happyShift action_10
action_21 (24) = happyShift action_11
action_21 (30) = happyShift action_13
action_21 (6) = happyGoto action_44
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (11) = happyShift action_4
action_22 (13) = happyShift action_5
action_22 (14) = happyShift action_6
action_22 (15) = happyShift action_7
action_22 (16) = happyShift action_8
action_22 (21) = happyShift action_9
action_22 (23) = happyShift action_10
action_22 (24) = happyShift action_11
action_22 (30) = happyShift action_13
action_22 (6) = happyGoto action_43
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (12) = happyShift action_42
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (12) = happyShift action_41
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (12) = happyShift action_40
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (16) = happyShift action_39
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (12) = happyShift action_38
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (13) = happyShift action_18
action_28 (14) = happyShift action_19
action_28 (15) = happyShift action_20
action_28 (17) = happyShift action_37
action_28 (29) = happyShift action_21
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_4
action_29 (13) = happyShift action_5
action_29 (14) = happyShift action_6
action_29 (15) = happyShift action_7
action_29 (16) = happyShift action_8
action_29 (21) = happyShift action_9
action_29 (23) = happyShift action_10
action_29 (24) = happyShift action_11
action_29 (30) = happyShift action_13
action_29 (6) = happyGoto action_36
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_4
action_30 (13) = happyShift action_5
action_30 (14) = happyShift action_6
action_30 (15) = happyShift action_7
action_30 (16) = happyShift action_8
action_30 (21) = happyShift action_9
action_30 (23) = happyShift action_10
action_30 (24) = happyShift action_11
action_30 (30) = happyShift action_13
action_30 (6) = happyGoto action_35
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_4
action_31 (13) = happyShift action_5
action_31 (14) = happyShift action_6
action_31 (15) = happyShift action_7
action_31 (16) = happyShift action_8
action_31 (21) = happyShift action_9
action_31 (23) = happyShift action_10
action_31 (24) = happyShift action_11
action_31 (30) = happyShift action_13
action_31 (6) = happyGoto action_34
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (11) = happyShift action_4
action_32 (13) = happyShift action_5
action_32 (14) = happyShift action_6
action_32 (15) = happyShift action_7
action_32 (16) = happyShift action_8
action_32 (21) = happyShift action_9
action_32 (23) = happyShift action_10
action_32 (24) = happyShift action_11
action_32 (25) = happyShift action_12
action_32 (30) = happyShift action_13
action_32 (5) = happyGoto action_33
action_32 (6) = happyGoto action_3
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_1

action_34 (13) = happyShift action_18
action_34 (14) = happyShift action_19
action_34 (15) = happyShift action_20
action_34 (20) = happyShift action_56
action_34 (29) = happyShift action_21
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (13) = happyShift action_18
action_35 (14) = happyShift action_19
action_35 (15) = happyShift action_20
action_35 (20) = happyShift action_55
action_35 (29) = happyShift action_21
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (13) = happyShift action_18
action_36 (14) = happyShift action_19
action_36 (15) = happyShift action_20
action_36 (20) = happyShift action_54
action_36 (29) = happyShift action_21
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_7

action_38 (11) = happyShift action_4
action_38 (13) = happyShift action_5
action_38 (14) = happyShift action_6
action_38 (15) = happyShift action_7
action_38 (16) = happyShift action_8
action_38 (21) = happyShift action_9
action_38 (23) = happyShift action_10
action_38 (24) = happyShift action_11
action_38 (30) = happyShift action_13
action_38 (6) = happyGoto action_53
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (11) = happyShift action_4
action_39 (13) = happyShift action_5
action_39 (14) = happyShift action_6
action_39 (15) = happyShift action_7
action_39 (16) = happyShift action_8
action_39 (21) = happyShift action_9
action_39 (23) = happyShift action_10
action_39 (24) = happyShift action_11
action_39 (30) = happyShift action_13
action_39 (6) = happyGoto action_52
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (11) = happyShift action_51
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (11) = happyShift action_50
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (18) = happyShift action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (13) = happyShift action_18
action_43 (14) = happyShift action_19
action_43 (15) = happyShift action_20
action_43 (17) = happyShift action_48
action_43 (29) = happyShift action_21
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (13) = happyShift action_18
action_44 (14) = happyShift action_19
action_44 (15) = happyShift action_20
action_44 (29) = happyShift action_21
action_44 _ = happyReduce_19

action_45 (29) = happyShift action_21
action_45 _ = happyReduce_14

action_46 (15) = happyShift action_20
action_46 (29) = happyShift action_21
action_46 _ = happyReduce_12

action_47 (15) = happyShift action_20
action_47 (29) = happyShift action_21
action_47 _ = happyReduce_10

action_48 (16) = happyShift action_65
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (16) = happyShift action_64
action_49 (7) = happyGoto action_62
action_49 (8) = happyGoto action_63
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_4

action_51 _ = happyReduce_5

action_52 (13) = happyShift action_18
action_52 (14) = happyShift action_19
action_52 (15) = happyShift action_20
action_52 (17) = happyShift action_61
action_52 (29) = happyShift action_21
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (13) = happyShift action_18
action_53 (14) = happyShift action_19
action_53 (15) = happyShift action_20
action_53 (22) = happyShift action_60
action_53 (29) = happyShift action_21
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (11) = happyShift action_4
action_54 (13) = happyShift action_5
action_54 (14) = happyShift action_6
action_54 (15) = happyShift action_7
action_54 (16) = happyShift action_8
action_54 (21) = happyShift action_9
action_54 (23) = happyShift action_10
action_54 (24) = happyShift action_11
action_54 (30) = happyShift action_13
action_54 (6) = happyGoto action_59
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (11) = happyShift action_4
action_55 (13) = happyShift action_5
action_55 (14) = happyShift action_6
action_55 (15) = happyShift action_7
action_55 (16) = happyShift action_8
action_55 (21) = happyShift action_9
action_55 (23) = happyShift action_10
action_55 (24) = happyShift action_11
action_55 (30) = happyShift action_13
action_55 (6) = happyGoto action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (11) = happyShift action_4
action_56 (13) = happyShift action_5
action_56 (14) = happyShift action_6
action_56 (15) = happyShift action_7
action_56 (16) = happyShift action_8
action_56 (21) = happyShift action_9
action_56 (23) = happyShift action_10
action_56 (24) = happyShift action_11
action_56 (30) = happyShift action_13
action_56 (6) = happyGoto action_57
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (13) = happyShift action_18
action_57 (14) = happyShift action_19
action_57 (15) = happyShift action_20
action_57 (17) = happyShift action_73
action_57 (29) = happyShift action_21
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (13) = happyShift action_18
action_58 (14) = happyShift action_19
action_58 (15) = happyShift action_20
action_58 (17) = happyShift action_72
action_58 (29) = happyShift action_21
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (13) = happyShift action_18
action_59 (14) = happyShift action_19
action_59 (15) = happyShift action_20
action_59 (17) = happyShift action_71
action_59 (29) = happyShift action_21
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (11) = happyShift action_4
action_60 (13) = happyShift action_5
action_60 (14) = happyShift action_6
action_60 (15) = happyShift action_7
action_60 (16) = happyShift action_8
action_60 (21) = happyShift action_9
action_60 (23) = happyShift action_10
action_60 (24) = happyShift action_11
action_60 (30) = happyShift action_13
action_60 (6) = happyGoto action_70
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_17

action_62 (19) = happyShift action_68
action_62 (20) = happyShift action_69
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_21

action_64 (18) = happyShift action_67
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (11) = happyShift action_4
action_65 (13) = happyShift action_5
action_65 (14) = happyShift action_6
action_65 (15) = happyShift action_7
action_65 (16) = happyShift action_8
action_65 (21) = happyShift action_9
action_65 (23) = happyShift action_10
action_65 (24) = happyShift action_11
action_65 (30) = happyShift action_13
action_65 (6) = happyGoto action_66
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (13) = happyShift action_18
action_66 (14) = happyShift action_19
action_66 (15) = happyShift action_20
action_66 (17) = happyShift action_77
action_66 (29) = happyShift action_21
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (11) = happyShift action_4
action_67 (13) = happyShift action_5
action_67 (14) = happyShift action_6
action_67 (15) = happyShift action_7
action_67 (16) = happyShift action_8
action_67 (21) = happyShift action_9
action_67 (23) = happyShift action_10
action_67 (24) = happyShift action_11
action_67 (30) = happyShift action_13
action_67 (6) = happyGoto action_75
action_67 (9) = happyGoto action_76
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_3

action_69 (16) = happyShift action_64
action_69 (8) = happyGoto action_74
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (13) = happyShift action_18
action_70 (14) = happyShift action_19
action_70 (15) = happyShift action_20
action_70 (29) = happyShift action_21
action_70 _ = happyReduce_18

action_71 _ = happyReduce_15

action_72 _ = happyReduce_13

action_73 _ = happyReduce_11

action_74 _ = happyReduce_20

action_75 (13) = happyShift action_18
action_75 (14) = happyShift action_19
action_75 (15) = happyShift action_20
action_75 (29) = happyShift action_21
action_75 _ = happyReduce_24

action_76 (19) = happyShift action_78
action_76 (20) = happyShift action_79
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_16

action_78 (20) = happyShift action_81
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (11) = happyShift action_4
action_79 (13) = happyShift action_5
action_79 (14) = happyShift action_6
action_79 (15) = happyShift action_7
action_79 (16) = happyShift action_8
action_79 (21) = happyShift action_9
action_79 (23) = happyShift action_10
action_79 (24) = happyShift action_11
action_79 (30) = happyShift action_13
action_79 (6) = happyGoto action_80
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (13) = happyShift action_18
action_80 (14) = happyShift action_19
action_80 (15) = happyShift action_20
action_80 (29) = happyShift action_21
action_80 _ = happyReduce_23

action_81 (18) = happyShift action_82
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (11) = happyShift action_4
action_82 (13) = happyShift action_5
action_82 (14) = happyShift action_6
action_82 (15) = happyShift action_7
action_82 (16) = happyShift action_8
action_82 (21) = happyShift action_9
action_82 (23) = happyShift action_10
action_82 (24) = happyShift action_11
action_82 (30) = happyShift action_13
action_82 (6) = happyGoto action_75
action_82 (9) = happyGoto action_83
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (19) = happyShift action_84
action_83 (20) = happyShift action_79
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (17) = happyShift action_85
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_22

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (MtData (happy_var_1, happy_var_2, happy_var_3)
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn4
		 (InList happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happyReduce 6 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MtPst happy_var_5
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 4 5 happyReduction_4
happyReduction_4 ((HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MtPstSize happy_var_4
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 4 5 happyReduction_5
happyReduction_5 ((HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MtInCnt happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (MtFuncs [happy_var_1]
	)
happyReduction_6 _  = notHappyAtAll 

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

happyReduce_16 = happyReduce 7 6 happyReduction_16
happyReduction_16 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExApp (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 5 6 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExLam (happy_var_2) (happy_var_4)
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 6 6 happyReduction_18
happyReduction_18 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExLet happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1, happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  7 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  7 happyReduction_21
happyReduction_21 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happyReduce 9 8 happyReduction_22
happyReduction_22 (_ `HappyStk`
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

happyReduce_23 = happySpecReduce_3  9 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_3 : happy_var_1
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  9 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  10 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  10 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_2 : happy_var_1
	)
happyReduction_26 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 31 31 notHappyAtAll (HappyState action) sts stk []

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
	TokenApp _ -> cont 30;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 31 tk tks = happyError' (tks, explist)
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

data Exp = MtData MetaData
         | InList InputList

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

