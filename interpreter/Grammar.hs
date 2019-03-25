{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,249) ([0,32,0,64,8192,46133,3,0,0,1024,0,0,0,17402,3,0,0,2048,0,4096,0,8192,0,27200,104,0,64,0,0,0,256,0,16,4096,0,8192,0,8192,0,16384,0,0,0,0,256,0,512,0,8,0,8168,13,6800,26,13600,52,27200,104,0,0,43264,417,20992,835,41984,1670,0,32,36864,55834,1,9216,0,18480,0,36960,0,45565,1,25594,3,51188,6,0,0,6800,26,13600,52,0,6,0,0,0,4,0,0,0,0,18432,3341,0,0,0,32,16384,26879,32768,61694,0,41385,1,17234,3,34468,6,16384,0,16384,0,32672,52,65344,104,65152,209,43264,417,0,0,0,0,59392,3343,0,384,0,512,16384,26730,0,36990,0,0,0,0,0,0,0,3400,237,32768,0,16288,52,0,1,54400,208,0,0,0,48,0,8,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","MetaData","Meta","Exp","Expr","PastExp","MappingExps","MappingExp","Exprs","int","'='","'+'","sum","'-'","sub","'*'","mult","'('","')'","'['","']'","','","let","in","var","lam","set","past","pastCount","inStreamCount","%eof"]
        bit_start = st * 33
        bit_end = (st + 1) * 33
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..32]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (22) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (22) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (12) = happyShift action_7
action_2 (15) = happyShift action_8
action_2 (17) = happyShift action_9
action_2 (19) = happyShift action_10
action_2 (20) = happyShift action_11
action_2 (25) = happyShift action_12
action_2 (27) = happyShift action_13
action_2 (28) = happyShift action_14
action_2 (30) = happyShift action_15
action_2 (31) = happyShift action_16
action_2 (32) = happyShift action_17
action_2 (5) = happyGoto action_4
action_2 (6) = happyGoto action_5
action_2 (7) = happyGoto action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (33) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (23) = happyShift action_32
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_2

action_6 (12) = happyShift action_7
action_6 (14) = happyShift action_29
action_6 (15) = happyShift action_8
action_6 (16) = happyShift action_30
action_6 (17) = happyShift action_9
action_6 (18) = happyShift action_31
action_6 (19) = happyShift action_10
action_6 (20) = happyShift action_11
action_6 (25) = happyShift action_12
action_6 (27) = happyShift action_13
action_6 (28) = happyShift action_14
action_6 (7) = happyGoto action_28
action_6 _ = happyReduce_3

action_7 _ = happyReduce_8

action_8 (20) = happyShift action_27
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (20) = happyShift action_26
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (20) = happyShift action_25
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_7
action_11 (15) = happyShift action_8
action_11 (17) = happyShift action_9
action_11 (19) = happyShift action_10
action_11 (20) = happyShift action_11
action_11 (25) = happyShift action_12
action_11 (27) = happyShift action_13
action_11 (28) = happyShift action_14
action_11 (7) = happyGoto action_24
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (27) = happyShift action_23
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_9

action_14 (27) = happyShift action_22
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (22) = happyShift action_21
action_15 (8) = happyGoto action_20
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyShift action_19
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (13) = happyShift action_18
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (12) = happyShift action_47
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (12) = happyShift action_46
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_4

action_21 (20) = happyShift action_45
action_21 (9) = happyGoto action_43
action_21 (10) = happyGoto action_44
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (20) = happyShift action_42
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (13) = happyShift action_41
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (12) = happyShift action_7
action_24 (14) = happyShift action_29
action_24 (15) = happyShift action_8
action_24 (16) = happyShift action_30
action_24 (17) = happyShift action_9
action_24 (18) = happyShift action_31
action_24 (19) = happyShift action_10
action_24 (20) = happyShift action_11
action_24 (21) = happyShift action_40
action_24 (25) = happyShift action_12
action_24 (27) = happyShift action_13
action_24 (28) = happyShift action_14
action_24 (7) = happyGoto action_28
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (12) = happyShift action_7
action_25 (15) = happyShift action_8
action_25 (17) = happyShift action_9
action_25 (19) = happyShift action_10
action_25 (20) = happyShift action_11
action_25 (25) = happyShift action_12
action_25 (27) = happyShift action_13
action_25 (28) = happyShift action_14
action_25 (7) = happyGoto action_39
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (12) = happyShift action_7
action_26 (15) = happyShift action_8
action_26 (17) = happyShift action_9
action_26 (19) = happyShift action_10
action_26 (20) = happyShift action_11
action_26 (25) = happyShift action_12
action_26 (27) = happyShift action_13
action_26 (28) = happyShift action_14
action_26 (7) = happyGoto action_38
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (12) = happyShift action_7
action_27 (15) = happyShift action_8
action_27 (17) = happyShift action_9
action_27 (19) = happyShift action_10
action_27 (20) = happyShift action_11
action_27 (25) = happyShift action_12
action_27 (27) = happyShift action_13
action_27 (28) = happyShift action_14
action_27 (7) = happyGoto action_37
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyGoto action_28
action_28 _ = happyReduce_16

action_29 (12) = happyShift action_7
action_29 (15) = happyShift action_8
action_29 (17) = happyShift action_9
action_29 (19) = happyShift action_10
action_29 (20) = happyShift action_11
action_29 (25) = happyShift action_12
action_29 (27) = happyShift action_13
action_29 (28) = happyShift action_14
action_29 (7) = happyGoto action_36
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (12) = happyShift action_7
action_30 (15) = happyShift action_8
action_30 (17) = happyShift action_9
action_30 (19) = happyShift action_10
action_30 (20) = happyShift action_11
action_30 (25) = happyShift action_12
action_30 (27) = happyShift action_13
action_30 (28) = happyShift action_14
action_30 (7) = happyGoto action_35
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (12) = happyShift action_7
action_31 (15) = happyShift action_8
action_31 (17) = happyShift action_9
action_31 (19) = happyShift action_10
action_31 (20) = happyShift action_11
action_31 (25) = happyShift action_12
action_31 (27) = happyShift action_13
action_31 (28) = happyShift action_14
action_31 (7) = happyGoto action_34
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (22) = happyShift action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (12) = happyShift action_7
action_33 (15) = happyShift action_8
action_33 (17) = happyShift action_9
action_33 (19) = happyShift action_10
action_33 (20) = happyShift action_11
action_33 (25) = happyShift action_12
action_33 (27) = happyShift action_13
action_33 (28) = happyShift action_14
action_33 (30) = happyShift action_15
action_33 (31) = happyShift action_16
action_33 (32) = happyShift action_17
action_33 (5) = happyGoto action_56
action_33 (6) = happyGoto action_5
action_33 (7) = happyGoto action_6
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (25) = happyShift action_12
action_34 (28) = happyShift action_14
action_34 (7) = happyGoto action_28
action_34 _ = happyReduce_14

action_35 (18) = happyShift action_31
action_35 (19) = happyShift action_10
action_35 (25) = happyShift action_12
action_35 (28) = happyShift action_14
action_35 (7) = happyGoto action_28
action_35 _ = happyReduce_12

action_36 (18) = happyShift action_31
action_36 (19) = happyShift action_10
action_36 (25) = happyShift action_12
action_36 (28) = happyShift action_14
action_36 (7) = happyGoto action_28
action_36 _ = happyReduce_10

action_37 (12) = happyShift action_7
action_37 (14) = happyShift action_29
action_37 (15) = happyShift action_8
action_37 (16) = happyShift action_30
action_37 (17) = happyShift action_9
action_37 (18) = happyShift action_31
action_37 (19) = happyShift action_10
action_37 (20) = happyShift action_11
action_37 (24) = happyShift action_55
action_37 (25) = happyShift action_12
action_37 (27) = happyShift action_13
action_37 (28) = happyShift action_14
action_37 (7) = happyGoto action_28
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (12) = happyShift action_7
action_38 (14) = happyShift action_29
action_38 (15) = happyShift action_8
action_38 (16) = happyShift action_30
action_38 (17) = happyShift action_9
action_38 (18) = happyShift action_31
action_38 (19) = happyShift action_10
action_38 (20) = happyShift action_11
action_38 (24) = happyShift action_54
action_38 (25) = happyShift action_12
action_38 (27) = happyShift action_13
action_38 (28) = happyShift action_14
action_38 (7) = happyGoto action_28
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (12) = happyShift action_7
action_39 (14) = happyShift action_29
action_39 (15) = happyShift action_8
action_39 (16) = happyShift action_30
action_39 (17) = happyShift action_9
action_39 (18) = happyShift action_31
action_39 (19) = happyShift action_10
action_39 (20) = happyShift action_11
action_39 (24) = happyShift action_53
action_39 (25) = happyShift action_12
action_39 (27) = happyShift action_13
action_39 (28) = happyShift action_14
action_39 (7) = happyGoto action_28
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_7

action_41 (12) = happyShift action_7
action_41 (15) = happyShift action_8
action_41 (17) = happyShift action_9
action_41 (19) = happyShift action_10
action_41 (20) = happyShift action_11
action_41 (25) = happyShift action_12
action_41 (27) = happyShift action_13
action_41 (28) = happyShift action_14
action_41 (7) = happyGoto action_52
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (12) = happyShift action_7
action_42 (15) = happyShift action_8
action_42 (17) = happyShift action_9
action_42 (19) = happyShift action_10
action_42 (20) = happyShift action_11
action_42 (25) = happyShift action_12
action_42 (27) = happyShift action_13
action_42 (28) = happyShift action_14
action_42 (7) = happyGoto action_51
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (23) = happyShift action_49
action_43 (24) = happyShift action_50
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_21

action_45 (22) = happyShift action_48
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_6

action_47 _ = happyReduce_5

action_48 (12) = happyShift action_7
action_48 (15) = happyShift action_8
action_48 (17) = happyShift action_9
action_48 (19) = happyShift action_10
action_48 (20) = happyShift action_11
action_48 (25) = happyShift action_12
action_48 (27) = happyShift action_13
action_48 (28) = happyShift action_14
action_48 (7) = happyGoto action_64
action_48 (11) = happyGoto action_65
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_19

action_50 (20) = happyShift action_45
action_50 (10) = happyGoto action_63
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (12) = happyShift action_7
action_51 (14) = happyShift action_29
action_51 (15) = happyShift action_8
action_51 (16) = happyShift action_30
action_51 (17) = happyShift action_9
action_51 (18) = happyShift action_31
action_51 (19) = happyShift action_10
action_51 (20) = happyShift action_11
action_51 (21) = happyShift action_62
action_51 (25) = happyShift action_12
action_51 (27) = happyShift action_13
action_51 (28) = happyShift action_14
action_51 (7) = happyGoto action_28
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (12) = happyShift action_7
action_52 (14) = happyShift action_29
action_52 (15) = happyShift action_8
action_52 (16) = happyShift action_30
action_52 (17) = happyShift action_9
action_52 (18) = happyShift action_31
action_52 (19) = happyShift action_10
action_52 (20) = happyShift action_11
action_52 (25) = happyShift action_12
action_52 (26) = happyShift action_61
action_52 (27) = happyShift action_13
action_52 (28) = happyShift action_14
action_52 (7) = happyGoto action_28
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (12) = happyShift action_7
action_53 (15) = happyShift action_8
action_53 (17) = happyShift action_9
action_53 (19) = happyShift action_10
action_53 (20) = happyShift action_11
action_53 (25) = happyShift action_12
action_53 (27) = happyShift action_13
action_53 (28) = happyShift action_14
action_53 (7) = happyGoto action_60
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (12) = happyShift action_7
action_54 (15) = happyShift action_8
action_54 (17) = happyShift action_9
action_54 (19) = happyShift action_10
action_54 (20) = happyShift action_11
action_54 (25) = happyShift action_12
action_54 (27) = happyShift action_13
action_54 (28) = happyShift action_14
action_54 (7) = happyGoto action_59
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (12) = happyShift action_7
action_55 (15) = happyShift action_8
action_55 (17) = happyShift action_9
action_55 (19) = happyShift action_10
action_55 (20) = happyShift action_11
action_55 (25) = happyShift action_12
action_55 (27) = happyShift action_13
action_55 (28) = happyShift action_14
action_55 (7) = happyGoto action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (23) = happyShift action_57
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (22) = happyShift action_72
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (12) = happyShift action_7
action_58 (14) = happyShift action_29
action_58 (15) = happyShift action_8
action_58 (16) = happyShift action_30
action_58 (17) = happyShift action_9
action_58 (18) = happyShift action_31
action_58 (19) = happyShift action_10
action_58 (20) = happyShift action_11
action_58 (21) = happyShift action_71
action_58 (25) = happyShift action_12
action_58 (27) = happyShift action_13
action_58 (28) = happyShift action_14
action_58 (7) = happyGoto action_28
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (12) = happyShift action_7
action_59 (14) = happyShift action_29
action_59 (15) = happyShift action_8
action_59 (16) = happyShift action_30
action_59 (17) = happyShift action_9
action_59 (18) = happyShift action_31
action_59 (19) = happyShift action_10
action_59 (20) = happyShift action_11
action_59 (21) = happyShift action_70
action_59 (25) = happyShift action_12
action_59 (27) = happyShift action_13
action_59 (28) = happyShift action_14
action_59 (7) = happyGoto action_28
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (12) = happyShift action_7
action_60 (14) = happyShift action_29
action_60 (15) = happyShift action_8
action_60 (16) = happyShift action_30
action_60 (17) = happyShift action_9
action_60 (18) = happyShift action_31
action_60 (19) = happyShift action_10
action_60 (20) = happyShift action_11
action_60 (21) = happyShift action_69
action_60 (25) = happyShift action_12
action_60 (27) = happyShift action_13
action_60 (28) = happyShift action_14
action_60 (7) = happyGoto action_28
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (12) = happyShift action_7
action_61 (15) = happyShift action_8
action_61 (17) = happyShift action_9
action_61 (19) = happyShift action_10
action_61 (20) = happyShift action_11
action_61 (25) = happyShift action_12
action_61 (27) = happyShift action_13
action_61 (28) = happyShift action_14
action_61 (7) = happyGoto action_68
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_17

action_63 _ = happyReduce_20

action_64 (12) = happyShift action_7
action_64 (14) = happyShift action_29
action_64 (15) = happyShift action_8
action_64 (16) = happyShift action_30
action_64 (17) = happyShift action_9
action_64 (18) = happyShift action_31
action_64 (19) = happyShift action_10
action_64 (20) = happyShift action_11
action_64 (25) = happyShift action_12
action_64 (27) = happyShift action_13
action_64 (28) = happyShift action_14
action_64 (7) = happyGoto action_28
action_64 _ = happyReduce_24

action_65 (23) = happyShift action_66
action_65 (24) = happyShift action_67
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (24) = happyShift action_75
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (12) = happyShift action_7
action_67 (15) = happyShift action_8
action_67 (17) = happyShift action_9
action_67 (19) = happyShift action_10
action_67 (20) = happyShift action_11
action_67 (25) = happyShift action_12
action_67 (27) = happyShift action_13
action_67 (28) = happyShift action_14
action_67 (7) = happyGoto action_74
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (12) = happyFail []
action_68 (14) = happyShift action_29
action_68 (15) = happyShift action_8
action_68 (16) = happyShift action_30
action_68 (17) = happyShift action_9
action_68 (18) = happyShift action_31
action_68 (19) = happyShift action_10
action_68 (20) = happyFail []
action_68 (25) = happyShift action_12
action_68 (27) = happyFail []
action_68 (28) = happyShift action_14
action_68 (7) = happyGoto action_28
action_68 _ = happyReduce_18

action_69 _ = happyReduce_15

action_70 _ = happyReduce_13

action_71 _ = happyReduce_11

action_72 (12) = happyShift action_7
action_72 (15) = happyShift action_8
action_72 (17) = happyShift action_9
action_72 (19) = happyShift action_10
action_72 (20) = happyShift action_11
action_72 (25) = happyShift action_12
action_72 (27) = happyShift action_13
action_72 (28) = happyShift action_14
action_72 (30) = happyShift action_15
action_72 (31) = happyShift action_16
action_72 (32) = happyShift action_17
action_72 (5) = happyGoto action_73
action_72 (6) = happyGoto action_5
action_72 (7) = happyGoto action_6
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (23) = happyShift action_77
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (12) = happyShift action_7
action_74 (14) = happyShift action_29
action_74 (15) = happyShift action_8
action_74 (16) = happyShift action_30
action_74 (17) = happyShift action_9
action_74 (18) = happyShift action_31
action_74 (19) = happyShift action_10
action_74 (20) = happyShift action_11
action_74 (25) = happyShift action_12
action_74 (27) = happyShift action_13
action_74 (28) = happyShift action_14
action_74 (7) = happyGoto action_28
action_74 _ = happyReduce_23

action_75 (22) = happyShift action_76
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (12) = happyShift action_7
action_76 (15) = happyShift action_8
action_76 (17) = happyShift action_9
action_76 (19) = happyShift action_10
action_76 (20) = happyShift action_11
action_76 (25) = happyShift action_12
action_76 (27) = happyShift action_13
action_76 (28) = happyShift action_14
action_76 (7) = happyGoto action_64
action_76 (11) = happyGoto action_78
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_1

action_78 (23) = happyShift action_79
action_78 (24) = happyShift action_67
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (21) = happyShift action_80
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_22

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

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (MtFuncs [happy_var_1]
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  6 happyReduction_4
happyReduction_4 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (MtPst happy_var_2
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  6 happyReduction_5
happyReduction_5 (HappyTerminal (TokenInt _ happy_var_3))
	_
	_
	 =  HappyAbsSyn6
		 (MtInCnt happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 (HappyTerminal (TokenInt _ happy_var_3))
	_
	_
	 =  HappyAbsSyn6
		 (MtPstSize happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  7 happyReduction_7
happyReduction_7 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn7
		 (ExInt happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (ExVar happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (ExSum (happy_var_1) (happy_var_3)
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 7 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ExSum (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (ExSub (happy_var_1) (happy_var_3)
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 7 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ExSub (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (ExMult (happy_var_1) (happy_var_3)
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 6 7 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ExMult (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_2  7 happyReduction_16
happyReduction_16 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (ExApp (happy_var_1) (happy_var_2)
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 5 7 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ExLam (happy_var_2) (happy_var_4)
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 6 7 happyReduction_18
happyReduction_18 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ExLet happy_var_2 (happy_var_4) (happy_var_6)
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  9 happyReduction_20
happyReduction_20 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_3 : happy_var_1
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  9 happyReduction_21
happyReduction_21 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happyReduce 9 10 happyReduction_22
happyReduction_22 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 ((happy_var_3 , happy_var_7)
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_3  11 happyReduction_23
happyReduction_23 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_3 : happy_var_1
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 12;
	TokenEq _ -> cont 13;
	TokenPlus _ -> cont 14;
	TokenPlus _ -> cont 15;
	TokenMinus _ -> cont 16;
	TokenMinus _ -> cont 17;
	TokenTimes _ -> cont 18;
	TokenTimes _ -> cont 19;
	TokenLParen _ -> cont 20;
	TokenRParen _ -> cont 21;
	TokenLParenSq _ -> cont 22;
	TokenRParenSq _ -> cont 23;
	TokenSeq _ -> cont 24;
	TokenLet _ -> cont 25;
	TokenIn _ -> cont 26;
	TokenVar _ happy_dollar_dollar -> cont 27;
	TokenLam _ -> cont 28;
	TokenSet _ -> cont 29;
	TokenPast _ -> cont 30;
	TokenPastCount _ -> cont 31;
	TokenInStreamCount _ -> cont 32;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 33 tk tks = happyError' (tks, explist)
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

