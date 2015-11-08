import set_adt_hw
import bool
import option
import pair
import list
import nat
import eq
import Serialize
import list
import ite

--isEmpty tests

||| expecting true
a1: bool
a1 = isEmpty (mkSet nil{a = nat})

||| expecting false
a2: bool
a2 = isEmpty (mkSet ((S O)::(S (S O))::nil))

--set_insert tests

||| expecting (mkSet ((S O)::(S (S O))::nil))
b1: set nat
b1 = set_insert (S O) (mkSet ((S (S O))::nil))

||| expecting (mkSet ((S O)::nil))
b2: set nat
b2 = set_insert (S O) (mkSet ((S O)::nil))

--set_remove tests

||| expecting (mkSet ((S O)::nil))
c1: set nat
c1 = set_remove (S (S O)) (mkSet ((S O)::(S (S O))::nil))

||| expecting (mkSet ((S O)::nil))
c2: set nat
c2 = set_remove (S (S O)) (mkSet ((S O)::nil))

--set_cardinality test

||| expecting (S (S (S (S O))))
d1: nat
d1 = set_cardinality (mkSet ((S O)::(S (S O))::(S (S (S O)))::(S (S (S (S O))))::nil))

--set_member tests

||| expecting true
e1: bool
e1 = set_member (S O) (mkSet ((S O)::(S (S O))::nil))

||| expecting false
e2: bool
e2 = set_member (S (S (S O))) (mkSet ((S O)::nil))

--set_union tests

||| expecting (mkSet ((S O)::(S (S O))::(S (S (S O)))::nil))
f1: set nat
f1 = set_union (mkSet ((S O)::(S (S O))::nil)) (mkSet ((S (S O))::(S (S (S O)))::nil))

||| expecting (mkSet ((S O)::(S (S O))::nil))
f2: set nat
f2 = set_union (mkSet ((S O)::nil)) (mkSet ((S (S O))::nil))

--set_intersection tests

||| expecting (mkSet ((S O)::nil))
g1: set nat
g1 = set_intersection (mkSet ((S O)::nil)) (mkSet ((S O)::(S (S O))::nil))

||| expecting (mkSet nil)
g2: set nat
g2 = set_intersection (mkSet ((S O)::nil)) (mkSet ((S (S O))::nil))

--set_difference tests

||| expecting (mkSet ((S (S (S O)))::nil))
h1: set nat
h1 = set_difference (mkSet ((S O)::(S (S O))::(S (S (S O)))::nil)) (mkSet ((S O)::(S (S O))::nil))

||| expecting (mkSet ((S O)::nil))
h2: set nat
h2 = set_difference (mkSet ((S O)::nil)) (mkSet ((S (S O))::(S (S (S O)))::nil))

||| expecting (mkSet nil)
h3: set nat
h3 = set_difference (mkSet ((S (S O))::nil)) (mkSet ((S (S O))::nil))

--set_forall tests

||| expecting true
i1: bool
i1 = set_forall evenb (mkSet ((S (S O)):: (S (S (S (S O))))::nil))

||| expecting false
i2: bool
i2 = set_forall evenb (mkSet (O::(S O)::nil))

--set_exists tests

||| expecting true
j1: bool
j1 = set_exists evenb (mkSet ((S O)::(S (S O))::nil))

||| expecting false
j2: bool
j2 = set_exists evenb (mkSet ((S O)::nil))

--set_witness tests

||| expecting (some (S (S O))
k1: option nat
k1 = set_witness evenb (mkSet ((S O)::(S (S O))::nil))

||| expecting none
k2: option nat
k2 = set_witness evenb (mkSet ((S O)::nil))

--set_product tests

||| expecting nil
l1: set (pair nat nat)
l1 = set_product (mkSet nil) (mkSet ((S O)::(S (S O))::nil))

||| expecting (mkSet (mkPair true (S O))::(mkPair true (S (S O)))::(mkPair false (S O))::(mkPair false (S (S O)))::nil)
l2: set (pair bool nat)
l2 = set_product (mkSet (true::false::nil)) (mkSet ((S O)::(S (S O))::nil))

--set_eql tests

||| expecting true
m1: bool
m1 = set_eql (mkSet ((S O)::nil)) (mkSet ((S O)::nil))

||| expecting false
m2: bool
m2 = set_eql (mkSet ((S O)::nil)) (mkSet nil)

--set_toString tests

||| expecting "{True,False}"
n1: String
n1 = set_toString (mkSet (true::false::nil))


