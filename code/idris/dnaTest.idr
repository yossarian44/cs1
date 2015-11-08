
import dna
import list
import pair
import nat

--complement_base tests

||| a test, expecting T
c1: base
c1 = complement_base A

||| a test, expecting A
c2: base
c2 = complement_base T

||| a test, expecting G
c3: base
c3 = complement_base C

||| a test, expecting C
c4: base
c4 = complement_base G

--complement_strand tests

s1: list base
s1 = A :: C :: T :: G :: nil

s2: list base
s2 = C :: C :: T :: A :: nil

||| a test, expecting T :: G :: A :: C :: nil
cs1 : list base
cs1 = complement_strand s1

||| a test, expecting G :: G :: A :: T :: nil
cs2 : list base
cs2 = complement_strand s2

--strand1/strand2 tests

q1: list (pair base base)
q1 = (mkPair A T) :: (mkPair C G) :: (mkPair T A) :: (mkPair G C) :: nil

q2: list (pair base base)
q2 = (mkPair G C) :: (mkPair A T) :: (mkPair G C) :: (mkPair A T) :: nil

||| a test, expecting A :: C :: T :: G :: nil
a1: list base
a1 = strand1 q1

||| a test, exepcting G :: A :: G :: A :: nil
a2: list base
a2 = strand1 q2

||| a test, expecting T :: G :: A :: C :: nil
b1: list base
b1 = strand2 q1

||| a test, expecting C :: T :: C :: T :: nil
b2: list base
b2 = strand2 q2

--complete tests
||| a test, expecting (mkPair A T) :: (mkPair C G) :: (mkPair T A) :: (mkPair G C) :: nil
l1: list (pair base base)
l1 = complete s1

||| a test, expecting (mkPair C G) :: (mkPair C G) :: (mkPair T A) :: (mkPair A T) :: nil
l2: list (pair base base)
l2 = complete s2

--countBase tests
||| a test, expecting (S (S O))
n1: nat
n1 = countBase (A :: C :: A :: nil) A

||| a test, expecting O
n2: nat
n2 = countBase (A :: C :: G :: C :: nil) T

||| a test, expecting (S (S (S O)))
n3: nat
n3 = countBase (T :: T :: T :: nil) T
