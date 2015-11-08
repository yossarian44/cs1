module bool

import pair

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

|||Exam Problem #2: There are 16 possible ways to fill in the result column for a truth table for a binary Boolean function, and there are thus exactly 16 such functions, and no more.

andp: pair bool bool -> bool
andp (mkPair true true ) = true
andp _ = false

orp: pair bool bool -> bool
orp (mkPair false false ) = false
orp _ = true

nand: pair bool bool -> bool
nand a = not ( andp a )

xorp: pair bool bool -> bool
xorp (mkPair true false ) = true
xorp (mkPair false true) = true
xorp _ = false

pand: bool -> bool -> bool
pand true = id_bool
pand false = constFalse

por: bool -> bool -> bool
por true = constTrue
por false = id_bool

pxor: bool -> bool -> bool
pxor true = not
pxor false = id_bool

pnand: bool -> bool -> bool
pnand true = not
pnand false = constTrue

--implicit binary functions

and: bool -> bool -> bool
and true true = true
and _ _ = false

uf: bool -> bool
uf = (and true)

or: bool -> bool -> bool
or false false = false
or _ _ = true

xorb: bool -> bool -> bool
xorb true true = false
xorb false false = false
xorb _ _ = true

notand: bool -> bool -> bool
notand true true = false
notand _ _ = true

