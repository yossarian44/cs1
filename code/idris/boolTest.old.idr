module boolTest

import bool
import pair

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not(not b5)

||| a test, expecting true
b7: bool
b7 = andp(mkPair true true)

||| a test, expecting false
b8: bool
b8 = andp(mkPair true false)

||| a test, expecting false
b9: bool
b9 = andp(mkPair false true)

||| a test, expecting false
b10: bool
b10 = andp(mkPair false false)

||| a test, expecting true
b11: bool
b11 = orp(mkPair true true)

||| a test, expecting true
b12: bool
b12 = orp(mkPair true false)

||| a test, expecting true
b13: bool
b13 = orp(mkPair false true)

||| a test, expecting false
b14: bool
b14 = orp(mkPair false false)

||| a test, expecting false
b15: bool
b15 = nand(mkPair true true)

||| a test, expecting true
b16: bool
b16 = nand(mkPair true false)

||| a test, expecting true
b17: bool
b17 = nand(mkPair false true)

||| a test, expecting true
b18: bool
b18 = nand(mkPair false false)

||| a test, expecting false
b19: bool
b19 = xor(mkPair true true)

||| a test, expecting true
b20: bool
b20 = xor(mkPair true false)

||| a test, expecting true
b21: bool
b21= xor(mkPair false true)

||| a test, expecting false
b22: bool
b22 = xor(mkPair false false)

|||EXAM 1

--pand tests

pand_t_t: bool
pand_t_t = pand true true
--expect true

pand_t_f: bool
pand_t_f = pand true false
--expect false

pand_f_t: bool
pand_f_t = pand false true
--expect false

pand_f_f: bool
pand_f_f = pand false false
--expect false

--por tests

por_t_t: bool
por_t_t = por true true
--expect true

por_t_f: bool
por_t_f = por true false
--expect true

por_f_t: bool
por_f_t = por false true
--expect true

por_f_f: bool
por_f_f = por false false
--expect false

--pxor tests

pxor_t_t: bool
pxor_t_t = pxor true true
--expect false

pxor_t_f: bool
pxor_t_f = pxor true false
--expect true

pxor_f_t: bool
pxor_f_t = pxor false true
--expect true

pxor_f_f: bool
pxor_f_f = pxor false false
--expect false

--pnand tests

pnand_t_t: bool
pnand_t_t = pnand true true
--expect false

pnand_t_f: bool
pnand_t_f = pnand true false
--expect true

pnand_f_t: bool
pnand_f_t = pnand false true
--expect true

pnand_f_f: bool
pnand_f_f = pnand false false
--expect true
