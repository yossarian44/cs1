import nat
import bool
import Serialize

--add tests
||| a test, expecting (S O)
a1: nat
a1 = add O (S O)

||| a test, expecting (S (S (S (S O))))
a2: nat
a2 = add (S (S O)) (S (S O))

--mult tests
||| a test, expecting O
m1: nat
m1 = mult (S O) O

||| a test, expecting (S (S (S (S (S (S O))))))
m2: nat
m2 = mult (S (S O)) (S (S (S O)))

--fact tests
||| a test, expecting (S O)
f1: nat
f1 = fact O

||| a test, expecting (S (S (S (S (S (S O))))))
f2: nat
f2 = fact (S (S (S O)))

--sub tests
||| a test, expecting O
s1: nat
s1 = sub O (S O)

||| a test, expecting (S (S O))
s2: nat
s2 = sub (S (S O)) O

||| a test, expecting (S (S (S O)))
s3: nat
s3 = sub (S (S (S (S (S O))))) (S (S O))

--leq tests
||| a test, expecting true
l1: bool
l1 = leq O (S O)

||| a test, expecting false
l2: bool
l2 = leq (S O) O

||| a test, expecting true
l3: bool
l3 = leq (S O) (S (S O))

||| a test, expecting true
l4: bool
l4 = leq (S O) (S O)

||| a test, expecting false
l5: bool
l5 = leq (S (S O)) (S O)

--exp tests
||| a test, expecting O
x1: nat
x1 = exp O (S O)

||| a test, expecting (S O)
x2: nat
x2 = exp (S (S O)) O

||| a test, expecting (S (S (S (S O))))
x3: nat
x3 = exp (S (S O)) (S (S O))

--eq tests
||| a test, expecting true
e1: bool
e1 = eql_nat O O

||| a test, expecting false
e2: bool
e2 = eql_nat (S O) O

||| a test, expecting false
e3: bool
e3 = eql_nat O (S O)

||| a test, expecting true
e4: bool
e4 = eql_nat (S (S O)) (S (S O))

||| a test, expecting false
e5: bool
e5 = eql_nat (S O) (S (S (S O)))

-- gt tests
||| a test, expecting false
g1: bool
g1 = gt O O

||| a test, expecting true
g2: bool
g2 = gt (S O) O

||| a test, expecting false
g3: bool
g3 = gt O (S O)

||| a test, expecting true
g4: bool
g4 = gt (S (S O)) (S O)

||| a test, expecting false
g5: bool
g5 = gt (S O) (S (S (S O)))

-- geq tests
||| a test, expecting true
y1: bool
y1 = geq O O

||| a test, expecting true
y2: bool
y2 = geq (S O) O

||| a test, expecting false
y3: bool
y3 = geq O (S O)

||| a test, expecting true
y4: bool
y4 = geq (S (S O)) (S O)

||| a test, expecting false
y5: bool
y5 = geq (S O) (S (S (S O)))

-- lt tests
||| a test, expecting false
b1: bool
b1 = lt O O

||| a test, expecting false
b2: bool
b2 = lt (S O) O

||| a test, expecting true
b3: bool
b3 = lt O (S O)

||| a test, expecting true
b4: bool
b4 = lt (S O) (S (S O))

||| a test, expecting false
b5: bool
b5 = lt (S (S O)) (S O)

--fibb tests
||| a test, expecting O
q1: nat
q1 = fibb O

||| a test, expecting (S O)
q2: nat
q2 = fibb (S O)

||| a test, expecting (S (S (S O)))
q3: nat
q3 = fibb (S (S (S (S O))))

s: String
s = toString (S (S (S (S O))))
