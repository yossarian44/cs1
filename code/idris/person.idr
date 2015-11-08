module person

import pair

data person = mary | maurice

love_of: person -> person
love_of _ = maurice

love: person -> pair person person
love a = mkPair a maurice
