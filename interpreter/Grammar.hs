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
happyExpList = Happy_Data_Array.listArray (0,393) ([62464,464,7808,58,17360,7,0,0,0,0,1,8192,0,1024,0,53492,0,2048,0,0,0,32,0,224,0,0,0,40960,1671,0,0,0,0,17360,3,26746,16384,3343,4096,0,512,0,64,0,128,0,1,53248,839,31232,104,3904,13,41448,1,29757,0,0,62464,216,7808,27,25552,3,0,16384,3343,59392,417,256,0,32,0,512,0,4608,53248,835,8192,72,3904,13,8320,1,13373,40960,1743,62464,217,16000,27,512,0,0,0,0,59392,419,15616,60,34720,6,53492,32768,6686,53248,839,64000,104,8000,13,41448,1,0,0,96,0,0,16384,0,17360,3,0,0,8,57344,288,0,0,0,0,0,0,0,53248,835,0,6,32768,0,41448,1,13373,0,16,62464,208,32768,1,1024,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Meta","Expr","MappingExps","MappingExp","Exprs","IntExprs","int","'='","'+'","'-'","'*'","'('","')'","'['","']'","','","let","in","var","lam","set","past","pastCnt","SCount","%eof"]
        bit_start = st * 29
        bit_end = (st + 1) * 29
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..28]
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
action_0 (4) = happyGoto action_13
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_14
action_0 (10) = happyGoto action_15
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
action_2 (5) = happyGoto action_30
action_2 (6) = happyGoto action_3
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (11) = happyShift action_4
action_3 (13) = happyShift action_18
action_3 (14) = happyShift action_19
action_3 (15) = happyShift action_20
action_3 (16) = happyShift action_8
action_3 (21) = happyShift action_9
action_3 (23) = happyShift action_10
action_3 (24) = happyShift action_11
action_3 (6) = happyGoto action_17
action_3 _ = happyReduce_6

action_4 _ = happyReduce_8

action_5 (16) = happyShift action_29
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (16) = happyShift action_28
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (16) = happyShift action_27
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (11) = happyShift action_4
action_8 (13) = happyShift action_5
action_8 (14) = happyShift action_6
action_8 (15) = happyShift action_7
action_8 (16) = happyShift action_8
action_8 (21) = happyShift action_9
action_8 (23) = happyShift action_10
action_8 (24) = happyShift action_11
action_8 (6) = happyGoto action_26
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (23) = happyShift action_25
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_9

action_11 (23) = happyShift action_24
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (26) = happyShift action_21
action_12 (27) = happyShift action_22
action_12 (28) = happyShift action_23
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (29) = happyAccept
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (11) = happyShift action_4
action_14 (13) = happyShift action_18
action_14 (14) = happyShift action_19
action_14 (15) = happyShift action_20
action_14 (16) = happyShift action_8
action_14 (21) = happyShift action_9
action_14 (23) = happyShift action_10
action_14 (24) = happyShift action_11
action_14 (29) = happyReduce_24
action_14 (6) = happyGoto action_17
action_14 _ = happyReduce_6

action_15 (11) = happyShift action_4
action_15 (13) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (15) = happyShift action_7
action_15 (16) = happyShift action_8
action_15 (21) = happyShift action_9
action_15 (23) = happyShift action_10
action_15 (24) = happyShift action_11
action_15 (6) = happyGoto action_16
action_15 _ = happyReduce_2

action_16 (11) = happyShift action_4
action_16 (13) = happyShift action_18
action_16 (14) = happyShift action_19
action_16 (15) = happyShift action_20
action_16 (16) = happyShift action_8
action_16 (21) = happyShift action_9
action_16 (23) = happyShift action_10
action_16 (24) = happyShift action_11
action_16 (6) = happyGoto action_17
action_16 _ = happyReduce_25

action_17 (6) = happyGoto action_17
action_17 _ = happyReduce_16

action_18 (11) = happyShift action_4
action_18 (13) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (15) = happyShift action_7
action_18 (16) = happyShift action_46
action_18 (21) = happyShift action_9
action_18 (23) = happyShift action_10
action_18 (24) = happyShift action_11
action_18 (6) = happyGoto action_45
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (11) = happyShift action_4
action_19 (13) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (15) = happyShift action_7
action_19 (16) = happyShift action_44
action_19 (21) = happyShift action_9
action_19 (23) = happyShift action_10
action_19 (24) = happyShift action_11
action_19 (6) = happyGoto action_43
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (11) = happyShift action_4
action_20 (13) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (15) = happyShift action_7
action_20 (16) = happyShift action_42
action_20 (21) = happyShift action_9
action_20 (23) = happyShift action_10
action_20 (24) = happyShift action_11
action_20 (6) = happyGoto action_41
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (12) = happyShift action_40
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_39
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (12) = happyShift action_38
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (16) = happyShift action_37
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (12) = happyShift action_36
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_4
action_26 (13) = happyShift action_18
action_26 (14) = happyShift action_19
action_26 (15) = happyShift action_20
action_26 (16) = happyShift action_8
action_26 (17) = happyShift action_35
action_26 (21) = happyShift action_9
action_26 (23) = happyShift action_10
action_26 (24) = happyShift action_11
action_26 (6) = happyGoto action_17
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (11) = happyShift action_4
action_27 (13) = happyShift action_5
action_27 (14) = happyShift action_6
action_27 (15) = happyShift action_7
action_27 (16) = happyShift action_8
action_27 (21) = happyShift action_9
action_27 (23) = happyShift action_10
action_27 (24) = happyShift action_11
action_27 (6) = happyGoto action_34
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_4
action_28 (13) = happyShift action_5
action_28 (14) = happyShift action_6
action_28 (15) = happyShift action_7
action_28 (16) = happyShift action_8
action_28 (21) = happyShift action_9
action_28 (23) = happyShift action_10
action_28 (24) = happyShift action_11
action_28 (6) = happyGoto action_33
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_4
action_29 (13) = happyShift action_5
action_29 (14) = happyShift action_6
action_29 (15) = happyShift action_7
action_29 (16) = happyShift action_8
action_29 (21) = happyShift action_9
action_29 (23) = happyShift action_10
action_29 (24) = happyShift action_11
action_29 (6) = happyGoto action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_4
action_30 (13) = happyShift action_5
action_30 (14) = happyShift action_6
action_30 (15) = happyShift action_7
action_30 (16) = happyShift action_8
action_30 (21) = happyShift action_9
action_30 (23) = happyShift action_10
action_30 (24) = happyShift action_11
action_30 (25) = happyShift action_12
action_30 (5) = happyGoto action_31
action_30 (6) = happyGoto action_3
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_1

action_32 (11) = happyShift action_4
action_32 (13) = happyShift action_18
action_32 (14) = happyShift action_19
action_32 (15) = happyShift action_20
action_32 (16) = happyShift action_8
action_32 (20) = happyShift action_57
action_32 (21) = happyShift action_9
action_32 (23) = happyShift action_10
action_32 (24) = happyShift action_11
action_32 (6) = happyGoto action_17
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (11) = happyShift action_4
action_33 (13) = happyShift action_18
action_33 (14) = happyShift action_19
action_33 (15) = happyShift action_20
action_33 (16) = happyShift action_8
action_33 (20) = happyShift action_56
action_33 (21) = happyShift action_9
action_33 (23) = happyShift action_10
action_33 (24) = happyShift action_11
action_33 (6) = happyGoto action_17
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (11) = happyShift action_4
action_34 (13) = happyShift action_18
action_34 (14) = happyShift action_19
action_34 (15) = happyShift action_20
action_34 (16) = happyShift action_8
action_34 (20) = happyShift action_55
action_34 (21) = happyShift action_9
action_34 (23) = happyShift action_10
action_34 (24) = happyShift action_11
action_34 (6) = happyGoto action_17
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_7

action_36 (11) = happyShift action_4
action_36 (13) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (15) = happyShift action_7
action_36 (16) = happyShift action_8
action_36 (21) = happyShift action_9
action_36 (23) = happyShift action_10
action_36 (24) = happyShift action_11
action_36 (6) = happyGoto action_54
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (11) = happyShift action_4
action_37 (13) = happyShift action_5
action_37 (14) = happyShift action_6
action_37 (15) = happyShift action_7
action_37 (16) = happyShift action_8
action_37 (21) = happyShift action_9
action_37 (23) = happyShift action_10
action_37 (24) = happyShift action_11
action_37 (6) = happyGoto action_53
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (11) = happyShift action_52
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (11) = happyShift action_51
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (18) = happyShift action_50
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (21) = happyShift action_9
action_41 (24) = happyShift action_11
action_41 (6) = happyGoto action_17
action_41 _ = happyReduce_14

action_42 (11) = happyShift action_4
action_42 (13) = happyShift action_5
action_42 (14) = happyShift action_6
action_42 (15) = happyShift action_7
action_42 (16) = happyShift action_8
action_42 (21) = happyShift action_9
action_42 (23) = happyShift action_10
action_42 (24) = happyShift action_11
action_42 (6) = happyGoto action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (15) = happyShift action_20
action_43 (21) = happyShift action_9
action_43 (24) = happyShift action_11
action_43 (6) = happyGoto action_17
action_43 _ = happyReduce_12

action_44 (11) = happyShift action_4
action_44 (13) = happyShift action_5
action_44 (14) = happyShift action_6
action_44 (15) = happyShift action_7
action_44 (16) = happyShift action_8
action_44 (21) = happyShift action_9
action_44 (23) = happyShift action_10
action_44 (24) = happyShift action_11
action_44 (6) = happyGoto action_48
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (15) = happyShift action_20
action_45 (21) = happyShift action_9
action_45 (24) = happyShift action_11
action_45 (6) = happyGoto action_17
action_45 _ = happyReduce_10

action_46 (11) = happyShift action_4
action_46 (13) = happyShift action_5
action_46 (14) = happyShift action_6
action_46 (15) = happyShift action_7
action_46 (16) = happyShift action_8
action_46 (21) = happyShift action_9
action_46 (23) = happyShift action_10
action_46 (24) = happyShift action_11
action_46 (6) = happyGoto action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (11) = happyShift action_4
action_47 (13) = happyShift action_18
action_47 (14) = happyShift action_19
action_47 (15) = happyShift action_20
action_47 (16) = happyShift action_8
action_47 (17) = happyShift action_35
action_47 (20) = happyShift action_57
action_47 (21) = happyShift action_9
action_47 (23) = happyShift action_10
action_47 (24) = happyShift action_11
action_47 (6) = happyGoto action_17
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (11) = happyShift action_4
action_48 (13) = happyShift action_18
action_48 (14) = happyShift action_19
action_48 (15) = happyShift action_20
action_48 (16) = happyShift action_8
action_48 (17) = happyShift action_35
action_48 (20) = happyShift action_56
action_48 (21) = happyShift action_9
action_48 (23) = happyShift action_10
action_48 (24) = happyShift action_11
action_48 (6) = happyGoto action_17
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (11) = happyShift action_4
action_49 (13) = happyShift action_18
action_49 (14) = happyShift action_19
action_49 (15) = happyShift action_20
action_49 (16) = happyShift action_8
action_49 (17) = happyShift action_35
action_49 (20) = happyShift action_55
action_49 (21) = happyShift action_9
action_49 (23) = happyShift action_10
action_49 (24) = happyShift action_11
action_49 (6) = happyGoto action_17
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (16) = happyShift action_65
action_50 (7) = happyGoto action_63
action_50 (8) = happyGoto action_64
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_4

action_52 _ = happyReduce_5

action_53 (11) = happyShift action_4
action_53 (13) = happyShift action_18
action_53 (14) = happyShift action_19
action_53 (15) = happyShift action_20
action_53 (16) = happyShift action_8
action_53 (17) = happyShift action_62
action_53 (21) = happyShift action_9
action_53 (23) = happyShift action_10
action_53 (24) = happyShift action_11
action_53 (6) = happyGoto action_17
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (11) = happyShift action_4
action_54 (13) = happyShift action_18
action_54 (14) = happyShift action_19
action_54 (15) = happyShift action_20
action_54 (16) = happyShift action_8
action_54 (21) = happyShift action_9
action_54 (22) = happyShift action_61
action_54 (23) = happyShift action_10
action_54 (24) = happyShift action_11
action_54 (6) = happyGoto action_17
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (11) = happyShift action_4
action_55 (13) = happyShift action_5
action_55 (14) = happyShift action_6
action_55 (15) = happyShift action_7
action_55 (16) = happyShift action_8
action_55 (21) = happyShift action_9
action_55 (23) = happyShift action_10
action_55 (24) = happyShift action_11
action_55 (6) = happyGoto action_60
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (11) = happyShift action_4
action_56 (13) = happyShift action_5
action_56 (14) = happyShift action_6
action_56 (15) = happyShift action_7
action_56 (16) = happyShift action_8
action_56 (21) = happyShift action_9
action_56 (23) = happyShift action_10
action_56 (24) = happyShift action_11
action_56 (6) = happyGoto action_59
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (11) = happyShift action_4
action_57 (13) = happyShift action_5
action_57 (14) = happyShift action_6
action_57 (15) = happyShift action_7
action_57 (16) = happyShift action_8
action_57 (21) = happyShift action_9
action_57 (23) = happyShift action_10
action_57 (24) = happyShift action_11
action_57 (6) = happyGoto action_58
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (11) = happyShift action_4
action_58 (13) = happyShift action_18
action_58 (14) = happyShift action_19
action_58 (15) = happyShift action_20
action_58 (16) = happyShift action_8
action_58 (17) = happyShift action_72
action_58 (21) = happyShift action_9
action_58 (23) = happyShift action_10
action_58 (24) = happyShift action_11
action_58 (6) = happyGoto action_17
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (11) = happyShift action_4
action_59 (13) = happyShift action_18
action_59 (14) = happyShift action_19
action_59 (15) = happyShift action_20
action_59 (16) = happyShift action_8
action_59 (17) = happyShift action_71
action_59 (21) = happyShift action_9
action_59 (23) = happyShift action_10
action_59 (24) = happyShift action_11
action_59 (6) = happyGoto action_17
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (11) = happyShift action_4
action_60 (13) = happyShift action_18
action_60 (14) = happyShift action_19
action_60 (15) = happyShift action_20
action_60 (16) = happyShift action_8
action_60 (17) = happyShift action_70
action_60 (21) = happyShift action_9
action_60 (23) = happyShift action_10
action_60 (24) = happyShift action_11
action_60 (6) = happyGoto action_17
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (11) = happyShift action_4
action_61 (13) = happyShift action_5
action_61 (14) = happyShift action_6
action_61 (15) = happyShift action_7
action_61 (16) = happyShift action_8
action_61 (21) = happyShift action_9
action_61 (23) = happyShift action_10
action_61 (24) = happyShift action_11
action_61 (6) = happyGoto action_69
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_17

action_63 (19) = happyShift action_67
action_63 (20) = happyShift action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_20

action_65 (18) = happyShift action_66
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (11) = happyShift action_4
action_66 (13) = happyShift action_5
action_66 (14) = happyShift action_6
action_66 (15) = happyShift action_7
action_66 (16) = happyShift action_8
action_66 (21) = happyShift action_9
action_66 (23) = happyShift action_10
action_66 (24) = happyShift action_11
action_66 (6) = happyGoto action_74
action_66 (9) = happyGoto action_75
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_3

action_68 (16) = happyShift action_65
action_68 (8) = happyGoto action_73
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (11) = happyFail []
action_69 (13) = happyShift action_18
action_69 (14) = happyShift action_19
action_69 (15) = happyShift action_20
action_69 (16) = happyFail []
action_69 (21) = happyShift action_9
action_69 (23) = happyFail []
action_69 (24) = happyShift action_11
action_69 (6) = happyGoto action_17
action_69 _ = happyReduce_18

action_70 _ = happyReduce_15

action_71 _ = happyReduce_13

action_72 _ = happyReduce_11

action_73 _ = happyReduce_19

action_74 (11) = happyShift action_4
action_74 (13) = happyShift action_18
action_74 (14) = happyShift action_19
action_74 (15) = happyShift action_20
action_74 (16) = happyShift action_8
action_74 (21) = happyShift action_9
action_74 (23) = happyShift action_10
action_74 (24) = happyShift action_11
action_74 (6) = happyGoto action_17
action_74 _ = happyReduce_23

action_75 (19) = happyShift action_76
action_75 (20) = happyShift action_77
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (20) = happyShift action_79
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (11) = happyShift action_4
action_77 (13) = happyShift action_5
action_77 (14) = happyShift action_6
action_77 (15) = happyShift action_7
action_77 (16) = happyShift action_8
action_77 (21) = happyShift action_9
action_77 (23) = happyShift action_10
action_77 (24) = happyShift action_11
action_77 (6) = happyGoto action_78
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (11) = happyShift action_4
action_78 (13) = happyShift action_18
action_78 (14) = happyShift action_19
action_78 (15) = happyShift action_20
action_78 (16) = happyShift action_8
action_78 (21) = happyShift action_9
action_78 (23) = happyShift action_10
action_78 (24) = happyShift action_11
action_78 (6) = happyGoto action_17
action_78 _ = happyReduce_22

action_79 (18) = happyShift action_80
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (11) = happyShift action_4
action_80 (13) = happyShift action_5
action_80 (14) = happyShift action_6
action_80 (15) = happyShift action_7
action_80 (16) = happyShift action_8
action_80 (21) = happyShift action_9
action_80 (23) = happyShift action_10
action_80 (24) = happyShift action_11
action_80 (6) = happyGoto action_74
action_80 (9) = happyGoto action_81
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (19) = happyShift action_82
action_81 (20) = happyShift action_77
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (17) = happyShift action_83
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_21

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

happyReduce_16 = happySpecReduce_2  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExApp (happy_var_1) (happy_var_2)
	)
happyReduction_16 _ _  = notHappyAtAll 

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
	action 29 29 notHappyAtAll (HappyState action) sts stk []

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
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 29 tk tks = happyError' (tks, explist)
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

