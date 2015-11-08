module dna

import list
import pair
import nat

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base _ = C

complement_strand: list base -> list base
complement_strand nil = nil
complement_strand a = list.map complement_base a

strand1: list (pair base base) -> list base
strand1 a = list.map fst a

strand2: list (pair base base) -> list base
strand2 a = list.map snd a

comp_pair: base -> pair base base
comp_pair a = (mkPair a (complement_base a))

complete: list base -> list (pair base base)
complete nil = nil
complete a = map comp_pair a

--I think the following code does the same without needing to map:
--complete: list base -> list (pair base base)
--complete nil = nil
--complete (h :: t) = (mkPair h (complement_base h)) :: complete t

match_base: base -> base -> nat
match_base C C= (S O)
match_base A A = (S O)
match_base G G = (S O)
match_base T T = (S O)
match_base _ _ = O

countBase: list base -> base -> nat
countBase lista b = list.foldr add O (map (match_base b) lista)
