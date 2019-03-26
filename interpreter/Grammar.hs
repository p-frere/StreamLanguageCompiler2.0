{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,350) ([0,1,4096,0,26746,7,0,0,2,34720,6,0,0,4,16384,0,1024,0,26746,0,512,0,0,0,2,4,16384,0,1024,0,1024,0,2,0,16,16384,0,64,0,26874,40960,1671,31232,104,34720,6,0,40960,1671,31232,104,34720,6,256,40960,30343,0,72,34720,6,18464,40960,1671,8192,72,34720,6,27770,40960,1735,31232,108,0,0,26746,40960,1671,16384,0,0,0,2,0,8,0,6,0,0,256,40960,1679,31232,120,34720,6,26746,40960,1671,64000,108,53152,6,27898,0,32,0,1,36768,6,26874,40960,1679,31232,104,0,0,26746,0,0,16384,0,0,0,0,40960,1671,0,6,33664,4,0,0,0,0,0,34720,118,512,0,64,31232,104,34720,6,256,0,0,31232,104,24576,0,128,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","MetaData","Meta","Expr","MappingExps","MappingExp","Exprs","int","'='","'+'","'-'","'*'","'('","')'","'['","']'","','","let","in","var","lam","set","past","pastCnt","SCount","%eof"]
        bit_start = st * 28
        bit_end = (st + 1) * 28
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..27]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (17) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (17) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (10) = happyShift action_6
action_2 (12) = happyShift action_7
action_2 (13) = happyShift action_8
action_2 (14) = happyShift action_9
action_2 (15) = happyShift action_10
action_2 (20) = happyShift action_11
action_2 (22) = happyShift action_12
action_2 (23) = happyShift action_13
action_2 (25) = happyShift action_14
action_2 (26) = happyShift action_15
action_2 (27) = happyShift action_16
action_2 (5) = happyGoto action_4
action_2 (6) = happyGoto action_5
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (28) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (18) = happyShift action_30
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (10) = happyShift action_6
action_5 (12) = happyShift action_27
action_5 (13) = happyShift action_28
action_5 (14) = happyShift action_29
action_5 (15) = happyShift action_10
action_5 (20) = happyShift action_11
action_5 (22) = happyShift action_12
action_5 (23) = happyShift action_13
action_5 (6) = happyGoto action_26
action_5 _ = happyReduce_5

action_6 _ = happyReduce_7

action_7 (15) = happyShift action_25
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (15) = happyShift action_24
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (15) = happyShift action_23
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (10) = happyShift action_6
action_10 (12) = happyShift action_7
action_10 (13) = happyShift action_8
action_10 (14) = happyShift action_9
action_10 (15) = happyShift action_10
action_10 (20) = happyShift action_11
action_10 (22) = happyShift action_12
action_10 (23) = happyShift action_13
action_10 (6) = happyGoto action_22
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (22) = happyShift action_21
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_8

action_13 (22) = happyShift action_20
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (11) = happyShift action_19
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (11) = happyShift action_18
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (11) = happyShift action_17
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (15) = happyShift action_46
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (10) = happyShift action_45
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (17) = happyShift action_44
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (15) = happyShift action_43
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (11) = happyShift action_42
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (10) = happyShift action_6
action_22 (12) = happyShift action_27
action_22 (13) = happyShift action_28
action_22 (14) = happyShift action_29
action_22 (15) = happyShift action_10
action_22 (16) = happyShift action_41
action_22 (20) = happyShift action_11
action_22 (22) = happyShift action_12
action_22 (23) = happyShift action_13
action_22 (6) = happyGoto action_26
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (10) = happyShift action_6
action_23 (12) = happyShift action_7
action_23 (13) = happyShift action_8
action_23 (14) = happyShift action_9
action_23 (15) = happyShift action_10
action_23 (20) = happyShift action_11
action_23 (22) = happyShift action_12
action_23 (23) = happyShift action_13
action_23 (6) = happyGoto action_40
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (10) = happyShift action_6
action_24 (12) = happyShift action_7
action_24 (13) = happyShift action_8
action_24 (14) = happyShift action_9
action_24 (15) = happyShift action_10
action_24 (20) = happyShift action_11
action_24 (22) = happyShift action_12
action_24 (23) = happyShift action_13
action_24 (6) = happyGoto action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (10) = happyShift action_6
action_25 (12) = happyShift action_7
action_25 (13) = happyShift action_8
action_25 (14) = happyShift action_9
action_25 (15) = happyShift action_10
action_25 (20) = happyShift action_11
action_25 (22) = happyShift action_12
action_25 (23) = happyShift action_13
action_25 (6) = happyGoto action_38
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyGoto action_26
action_26 _ = happyReduce_15

action_27 (10) = happyShift action_6
action_27 (12) = happyShift action_7
action_27 (13) = happyShift action_8
action_27 (14) = happyShift action_9
action_27 (15) = happyShift action_37
action_27 (20) = happyShift action_11
action_27 (22) = happyShift action_12
action_27 (23) = happyShift action_13
action_27 (6) = happyGoto action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (10) = happyShift action_6
action_28 (12) = happyShift action_7
action_28 (13) = happyShift action_8
action_28 (14) = happyShift action_9
action_28 (15) = happyShift action_35
action_28 (20) = happyShift action_11
action_28 (22) = happyShift action_12
action_28 (23) = happyShift action_13
action_28 (6) = happyGoto action_34
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (10) = happyShift action_6
action_29 (12) = happyShift action_7
action_29 (13) = happyShift action_8
action_29 (14) = happyShift action_9
action_29 (15) = happyShift action_33
action_29 (20) = happyShift action_11
action_29 (22) = happyShift action_12
action_29 (23) = happyShift action_13
action_29 (6) = happyGoto action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (17) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (10) = happyShift action_6
action_31 (12) = happyShift action_7
action_31 (13) = happyShift action_8
action_31 (14) = happyShift action_9
action_31 (15) = happyShift action_10
action_31 (20) = happyShift action_11
action_31 (22) = happyShift action_12
action_31 (23) = happyShift action_13
action_31 (25) = happyShift action_14
action_31 (26) = happyShift action_15
action_31 (27) = happyShift action_16
action_31 (5) = happyGoto action_59
action_31 (6) = happyGoto action_5
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (20) = happyShift action_11
action_32 (23) = happyShift action_13
action_32 (6) = happyGoto action_26
action_32 _ = happyReduce_13

action_33 (10) = happyShift action_6
action_33 (12) = happyShift action_7
action_33 (13) = happyShift action_8
action_33 (14) = happyShift action_9
action_33 (15) = happyShift action_10
action_33 (20) = happyShift action_11
action_33 (22) = happyShift action_12
action_33 (23) = happyShift action_13
action_33 (6) = happyGoto action_58
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (14) = happyShift action_29
action_34 (20) = happyShift action_11
action_34 (23) = happyShift action_13
action_34 (6) = happyGoto action_26
action_34 _ = happyReduce_11

action_35 (10) = happyShift action_6
action_35 (12) = happyShift action_7
action_35 (13) = happyShift action_8
action_35 (14) = happyShift action_9
action_35 (15) = happyShift action_10
action_35 (20) = happyShift action_11
action_35 (22) = happyShift action_12
action_35 (23) = happyShift action_13
action_35 (6) = happyGoto action_57
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (14) = happyShift action_29
action_36 (20) = happyShift action_11
action_36 (23) = happyShift action_13
action_36 (6) = happyGoto action_26
action_36 _ = happyReduce_9

action_37 (10) = happyShift action_6
action_37 (12) = happyShift action_7
action_37 (13) = happyShift action_8
action_37 (14) = happyShift action_9
action_37 (15) = happyShift action_10
action_37 (20) = happyShift action_11
action_37 (22) = happyShift action_12
action_37 (23) = happyShift action_13
action_37 (6) = happyGoto action_56
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (10) = happyShift action_6
action_38 (12) = happyShift action_27
action_38 (13) = happyShift action_28
action_38 (14) = happyShift action_29
action_38 (15) = happyShift action_10
action_38 (19) = happyShift action_55
action_38 (20) = happyShift action_11
action_38 (22) = happyShift action_12
action_38 (23) = happyShift action_13
action_38 (6) = happyGoto action_26
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (10) = happyShift action_6
action_39 (12) = happyShift action_27
action_39 (13) = happyShift action_28
action_39 (14) = happyShift action_29
action_39 (15) = happyShift action_10
action_39 (19) = happyShift action_54
action_39 (20) = happyShift action_11
action_39 (22) = happyShift action_12
action_39 (23) = happyShift action_13
action_39 (6) = happyGoto action_26
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (10) = happyShift action_6
action_40 (12) = happyShift action_27
action_40 (13) = happyShift action_28
action_40 (14) = happyShift action_29
action_40 (15) = happyShift action_10
action_40 (19) = happyShift action_53
action_40 (20) = happyShift action_11
action_40 (22) = happyShift action_12
action_40 (23) = happyShift action_13
action_40 (6) = happyGoto action_26
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_6

action_42 (10) = happyShift action_6
action_42 (12) = happyShift action_7
action_42 (13) = happyShift action_8
action_42 (14) = happyShift action_9
action_42 (15) = happyShift action_10
action_42 (20) = happyShift action_11
action_42 (22) = happyShift action_12
action_42 (23) = happyShift action_13
action_42 (6) = happyGoto action_52
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (10) = happyShift action_6
action_43 (12) = happyShift action_7
action_43 (13) = happyShift action_8
action_43 (14) = happyShift action_9
action_43 (15) = happyShift action_10
action_43 (20) = happyShift action_11
action_43 (22) = happyShift action_12
action_43 (23) = happyShift action_13
action_43 (6) = happyGoto action_51
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (15) = happyShift action_50
action_44 (7) = happyGoto action_48
action_44 (8) = happyGoto action_49
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_3

action_46 (10) = happyShift action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (16) = happyShift action_69
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (18) = happyShift action_67
action_48 (19) = happyShift action_68
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_19

action_50 (17) = happyShift action_66
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (10) = happyShift action_6
action_51 (12) = happyShift action_27
action_51 (13) = happyShift action_28
action_51 (14) = happyShift action_29
action_51 (15) = happyShift action_10
action_51 (16) = happyShift action_65
action_51 (20) = happyShift action_11
action_51 (22) = happyShift action_12
action_51 (23) = happyShift action_13
action_51 (6) = happyGoto action_26
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (10) = happyShift action_6
action_52 (12) = happyShift action_27
action_52 (13) = happyShift action_28
action_52 (14) = happyShift action_29
action_52 (15) = happyShift action_10
action_52 (20) = happyShift action_11
action_52 (21) = happyShift action_64
action_52 (22) = happyShift action_12
action_52 (23) = happyShift action_13
action_52 (6) = happyGoto action_26
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (10) = happyShift action_6
action_53 (12) = happyShift action_7
action_53 (13) = happyShift action_8
action_53 (14) = happyShift action_9
action_53 (15) = happyShift action_10
action_53 (20) = happyShift action_11
action_53 (22) = happyShift action_12
action_53 (23) = happyShift action_13
action_53 (6) = happyGoto action_63
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (10) = happyShift action_6
action_54 (12) = happyShift action_7
action_54 (13) = happyShift action_8
action_54 (14) = happyShift action_9
action_54 (15) = happyShift action_10
action_54 (20) = happyShift action_11
action_54 (22) = happyShift action_12
action_54 (23) = happyShift action_13
action_54 (6) = happyGoto action_62
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (10) = happyShift action_6
action_55 (12) = happyShift action_7
action_55 (13) = happyShift action_8
action_55 (14) = happyShift action_9
action_55 (15) = happyShift action_10
action_55 (20) = happyShift action_11
action_55 (22) = happyShift action_12
action_55 (23) = happyShift action_13
action_55 (6) = happyGoto action_61
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (10) = happyShift action_6
action_56 (12) = happyShift action_27
action_56 (13) = happyShift action_28
action_56 (14) = happyShift action_29
action_56 (15) = happyShift action_10
action_56 (16) = happyShift action_41
action_56 (19) = happyShift action_55
action_56 (20) = happyShift action_11
action_56 (22) = happyShift action_12
action_56 (23) = happyShift action_13
action_56 (6) = happyGoto action_26
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (10) = happyShift action_6
action_57 (12) = happyShift action_27
action_57 (13) = happyShift action_28
action_57 (14) = happyShift action_29
action_57 (15) = happyShift action_10
action_57 (16) = happyShift action_41
action_57 (19) = happyShift action_54
action_57 (20) = happyShift action_11
action_57 (22) = happyShift action_12
action_57 (23) = happyShift action_13
action_57 (6) = happyGoto action_26
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (10) = happyShift action_6
action_58 (12) = happyShift action_27
action_58 (13) = happyShift action_28
action_58 (14) = happyShift action_29
action_58 (15) = happyShift action_10
action_58 (16) = happyShift action_41
action_58 (19) = happyShift action_53
action_58 (20) = happyShift action_11
action_58 (22) = happyShift action_12
action_58 (23) = happyShift action_13
action_58 (6) = happyGoto action_26
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (18) = happyShift action_60
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (17) = happyShift action_77
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (10) = happyShift action_6
action_61 (12) = happyShift action_27
action_61 (13) = happyShift action_28
action_61 (14) = happyShift action_29
action_61 (15) = happyShift action_10
action_61 (16) = happyShift action_76
action_61 (20) = happyShift action_11
action_61 (22) = happyShift action_12
action_61 (23) = happyShift action_13
action_61 (6) = happyGoto action_26
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (10) = happyShift action_6
action_62 (12) = happyShift action_27
action_62 (13) = happyShift action_28
action_62 (14) = happyShift action_29
action_62 (15) = happyShift action_10
action_62 (16) = happyShift action_75
action_62 (20) = happyShift action_11
action_62 (22) = happyShift action_12
action_62 (23) = happyShift action_13
action_62 (6) = happyGoto action_26
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (10) = happyShift action_6
action_63 (12) = happyShift action_27
action_63 (13) = happyShift action_28
action_63 (14) = happyShift action_29
action_63 (15) = happyShift action_10
action_63 (16) = happyShift action_74
action_63 (20) = happyShift action_11
action_63 (22) = happyShift action_12
action_63 (23) = happyShift action_13
action_63 (6) = happyGoto action_26
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (10) = happyShift action_6
action_64 (12) = happyShift action_7
action_64 (13) = happyShift action_8
action_64 (14) = happyShift action_9
action_64 (15) = happyShift action_10
action_64 (20) = happyShift action_11
action_64 (22) = happyShift action_12
action_64 (23) = happyShift action_13
action_64 (6) = happyGoto action_73
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_16

action_66 (10) = happyShift action_6
action_66 (12) = happyShift action_7
action_66 (13) = happyShift action_8
action_66 (14) = happyShift action_9
action_66 (15) = happyShift action_10
action_66 (20) = happyShift action_11
action_66 (22) = happyShift action_12
action_66 (23) = happyShift action_13
action_66 (6) = happyGoto action_71
action_66 (9) = happyGoto action_72
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_2

action_68 (15) = happyShift action_50
action_68 (8) = happyGoto action_70
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_4

action_70 _ = happyReduce_18

action_71 (10) = happyShift action_6
action_71 (12) = happyShift action_27
action_71 (13) = happyShift action_28
action_71 (14) = happyShift action_29
action_71 (15) = happyShift action_10
action_71 (20) = happyShift action_11
action_71 (22) = happyShift action_12
action_71 (23) = happyShift action_13
action_71 (6) = happyGoto action_26
action_71 _ = happyReduce_22

action_72 (18) = happyShift action_79
action_72 (19) = happyShift action_80
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (10) = happyFail []
action_73 (12) = happyShift action_27
action_73 (13) = happyShift action_28
action_73 (14) = happyShift action_29
action_73 (15) = happyFail []
action_73 (20) = happyShift action_11
action_73 (22) = happyFail []
action_73 (23) = happyShift action_13
action_73 (6) = happyGoto action_26
action_73 _ = happyReduce_17

action_74 _ = happyReduce_14

action_75 _ = happyReduce_12

action_76 _ = happyReduce_10

action_77 (10) = happyShift action_6
action_77 (12) = happyShift action_7
action_77 (13) = happyShift action_8
action_77 (14) = happyShift action_9
action_77 (15) = happyShift action_10
action_77 (20) = happyShift action_11
action_77 (22) = happyShift action_12
action_77 (23) = happyShift action_13
action_77 (25) = happyShift action_14
action_77 (26) = happyShift action_15
action_77 (27) = happyShift action_16
action_77 (5) = happyGoto action_78
action_77 (6) = happyGoto action_5
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (18) = happyShift action_83
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (19) = happyShift action_82
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (10) = happyShift action_6
action_80 (12) = happyShift action_7
action_80 (13) = happyShift action_8
action_80 (14) = happyShift action_9
action_80 (15) = happyShift action_10
action_80 (20) = happyShift action_11
action_80 (22) = happyShift action_12
action_80 (23) = happyShift action_13
action_80 (6) = happyGoto action_81
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (10) = happyShift action_6
action_81 (12) = happyShift action_27
action_81 (13) = happyShift action_28
action_81 (14) = happyShift action_29
action_81 (15) = happyShift action_10
action_81 (20) = happyShift action_11
action_81 (22) = happyShift action_12
action_81 (23) = happyShift action_13
action_81 (6) = happyGoto action_26
action_81 _ = happyReduce_21

action_82 (17) = happyShift action_84
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_1

action_84 (10) = happyShift action_6
action_84 (12) = happyShift action_7
action_84 (13) = happyShift action_8
action_84 (14) = happyShift action_9
action_84 (15) = happyShift action_10
action_84 (20) = happyShift action_11
action_84 (22) = happyShift action_12
action_84 (23) = happyShift action_13
action_84 (6) = happyGoto action_71
action_84 (9) = happyGoto action_85
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (18) = happyShift action_86
action_85 (19) = happyShift action_80
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (16) = happyShift action_87
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_20

happyReduce_1 = happyReduce 9 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 ((happy_var_2, happy_var_5, happy_var_8)
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 5 5 happyReduction_2
happyReduction_2 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MtPst happy_var_4
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_3  5 happyReduction_3
happyReduction_3 (HappyTerminal (TokenInt _ happy_var_3))
	_
	_
	 =  HappyAbsSyn5
		 (MtPstSize happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happyReduce 5 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MtInCnt happy_var_4
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (MtFuncs [happy_var_1]
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (ExInt happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (ExVar happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExSum (happy_var_1) (happy_var_3)
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 6 6 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExSum (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExSub (happy_var_1) (happy_var_3)
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 6 6 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExSub (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExMult (happy_var_1) (happy_var_3)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 6 6 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExMult (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_2  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExApp (happy_var_1) (happy_var_2)
	)
happyReduction_15 _ _  = notHappyAtAll 

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
		 (ExLet happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_3  7 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  7 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happyReduce 9 8 happyReduction_20
happyReduction_20 (_ `HappyStk`
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

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_3 : happy_var_1
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  9 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_22 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 28 28 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 10;
	TokenEq _ -> cont 11;
	TokenPlus _ -> cont 12;
	TokenMinus _ -> cont 13;
	TokenTimes _ -> cont 14;
	TokenLParen _ -> cont 15;
	TokenRParen _ -> cont 16;
	TokenLParenSq _ -> cont 17;
	TokenRParenSq _ -> cont 18;
	TokenSeq _ -> cont 19;
	TokenLet _ -> cont 20;
	TokenIn _ -> cont 21;
	TokenVar _ happy_dollar_dollar -> cont 22;
	TokenLam _ -> cont 23;
	TokenSet _ -> cont 24;
	TokenPast _ -> cont 25;
	TokenPastCount _ -> cont 26;
	TokenInStreamCount _ -> cont 27;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 28 tk tks = happyError' (tks, explist)
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

