import bool
import eq
import nat
import unit

b: bool
b = (eql true true)

b2: bool
b2 = (eql true false)

n: bool
n = (eql O O)

u: bool
u = (eql mkUnit mkUnit)
