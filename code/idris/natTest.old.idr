import nat
import bool
import pair

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S o

-- three
r: nat
r = S t

-- four
f: nat
f = S r

-- six
q: nat
q = S (S f)

x: bool
x = isZero r

y: nat
y = succ O

a: bool
a = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb r

e: bool
e = evenb (S r)

||| a test, expecting O
h1: nat
h1 = addp (mkPair O O)

||| a test, expecting S (S O)
h2: nat
h2 = addp (mkPair O (S (S O)))

||| a test, expecting (S O)
h3: nat
h3 = addp (mkPair (S O) O)

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = addp (mkPair (S (S O)) (S (S (S O))))

||| a test, expecting O
h5: nat
h5 = multp (mkPair O (S (S O)))

||| a test, expecting S (S O)
h6: nat
h6 = multp (mkPair (S O) (S (S O)))

||| a test, epecting (S (S (S (S (S (S O))))))
h7: nat
h7 = multp (mkPair (S (S O)) (S (S (S O))))

||| a test, expecting S O
h8: nat
h8 = factp O

||| a test, expecting (S (S (S (S (S (S O))))))
h9: nat
h9 = factp (S (S (S O)))

||| a test, expecting (S (S (S (S O))))
h10: nat
h10 = exp (mkPair (S (S O)) (S (S O)))

||| a test, expecting O
h11: nat
h11 = exp (mkPair O (S O))

||| a test, expecting (S O)
h12: nat
h12 = exp(mkPair (S (S O)) O)

||| a test, expecting false
h13: bool
h13 = lep(mkPair (S O) O)

||| a test, expecting true
h14: bool
h14 = lep(mkPair O (S O))

||| a test, expecting true
h15: bool
h15 = lep(mkPair (S (S (S O))) (S (S (S (S O)))))

||| a test, expecting true
h16: bool
h16 = eqp(mkPair (S (S (S O))) (S (S (S O))))

||| a test, expecting false
h17: bool
h17 = eqp(mkPair (S (S O)) (S (S (S O))))

||| a test, expecting true
h18: bool
h18 = eqp(mkPair O O)

||| a test, expecting false
h19: bool
h19 = eqp(mkPair (S O) O)

||| a test, expecting false
h20: bool
h20 = gtp(mkPair O O)

||| a test, expecting true
h21: bool
h21 = gtp(mkPair (S O) O)

||| a test, expecting false
h22: bool
h22 = gtp(mkPair O (S O))

||| a test, expecting true
h23: bool
h23 = gtp(mkPair (S (S (S O))) (S O))

||| a test, expecting false
h24: bool
h24 = gtp(mkPair (S O) (S (S (S (S O)))))

||| a test, expecting true
h25: bool
h25 = gep(mkPair O O)

||| a test, expecting true
h26: bool
h26 = gep(mkPair (S (S O)) (S (S O)))

||| a test, expecting false
h27: bool
h27 = gep(mkPair (S (S O)) (S (S (S (S O)))))

||| a test, expecting false
h28: bool
h28 = ltp(mkPair (S (S (S O))) (S O))

||| a test, expecting true
h29: bool
h29 = ltp(mkPair (S O) (S (S O)))

||| a test, expecting (S O)
h30: nat
h30 = fibb (S O)

||| a test, expecting (S (S O))
h31: nat
h31 = fibb (S (S (S O)))

||| a test, expecting (S (S (S (S (S (S (S (S O))))))))
h32: nat
h32 = fibb (S (S (S (S (S O)))))
