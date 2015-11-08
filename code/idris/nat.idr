module nat

import bool
import eq
import Serialize

data nat = O | S nat

isZero: nat -> bool
isZero O = true
isZero _ = false

succ: nat -> nat
succ n = S n

pred: nat -> nat
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add (mult n m) m

fact: nat -> nat
fact O = (S O)
fact (S n) = mult (fact n) (S n)

sub: nat -> nat -> nat
sub O n = O
sub n O = n
sub (S n) (S m) = sub n m

leq: nat -> nat -> bool
leq O n = true
leq (S n) O = false
leq (S n) (S m) = leq n m

exp: nat -> nat -> nat
exp O _ = O
exp _ O = (S O)
exp x (S n) = mult x (exp x n)

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat n O = false
eql_nat O n = false
eql_nat (S n) (S m) = eql_nat n m

gt: nat -> nat -> bool
gt O O = false
gt n O = true
gt O n = false
gt (S n) (S m) = gt n m

geq: nat -> nat -> bool
geq O O = true
geq n O = true
geq O n = false
geq (S n) (S m) = geq n m

lt: nat -> nat -> bool
lt n m = not (geq n m)

fibb: nat -> nat
fibb O = O
fibb (S O) = (S O)
fibb (S (S n)) = add (fibb (S n)) (fibb n)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "|" ++ (toString n)
