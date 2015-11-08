import bool

--and tests

||| a test, expecting true
a1: bool
a1 = and true true

||| tests, expecting false
a2: bool
a2 = and true false

a3: bool
a3 = and false true

a4: bool
a4 = and false false

--or tests

||| tests, expecting true
o1: bool
o1 = or true true

o2: bool
o2 = or true false

o3: bool
o3 = or false true

||| a test, expecting false
o4: bool
o4 = or false false

--xor tests

||| a test, expecting false
x1: bool
x1 = xor true true

||| tests, expecting true
x2: bool
x2 = xor true false

x3: bool
x3 = xor false true

||| a test, expecting false
x4: bool
x4 = xor false false

--nand tests

||| a test, expecting false
n1: bool
n1 = nand true true

||| tests, expecting true
n2: bool
n2 = nand true false

n3: bool
n3 = nand false true

n4: bool
n4 = nand false false
