module list_nat.old

import nat
import pair
import list_nat

l0: list_nat
l0 = nil

l1: list_nat
l1 = cons O nil

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list_nat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

append: pair list_nat list_nat -> list_nat
append (mkPair nil n) = n
append (mkPair (cons h' t) n) = append (mkPair t (cons h' n ))
