module list

import bool
import nat
import ite
import eq
import Serialize

infixr 7 ::,++

data list a = nil | (::) a (list a)

len: list a -> nat
len nil = O
len (n :: l) = S (len l)

(++): list a -> list a -> list a
(++) nil n = n
(++) (a :: b) n = a :: (b ++ n)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h :: t) = (f h) :: (map f t)

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h :: t) = ite (f h) (h :: (filter f t)) (filter f t)

||| reduce a "list of a's" to "b" using a function f
||| having identity "id"
foldr: (a -> b -> b) -> b -> list a -> b
foldr f id nil = id
foldr f id (h :: t) = f h (list.foldr f id t)

--eql: a -> a -> bool
--eql v1 v2 =

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h :: t) = ite (eql v h)
                      true
                      (member v t)

--instance (eq a) => eq (list a) where
--  eql nil nil = true
--  eql (h::t) nil = false
--  eql nil (h::t) = false
--  eql (h1 :: t1) (h2 :: t2) = ite (eql h1 h2)
--                                (eql t1 t2)
--                                false

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1 :: t1) (h2 :: t2) = and (eql h1 h2) (eql t1 t2)

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil l2 = true
subset_elements (h1 :: t1) l2 = and (member h1 l2) (subset_elements t1 l2)

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)

list_string: (Serialize a) => list a -> String
list_string nil = ""
list_string (h::nil) = (toString h)
list_string (h1 :: t1) = (toString h1) ++ "," ++ (list_string t1)

instance (Serialize a) => Serialize (list a) where
    toString l1 = "[" ++ (list_string l1) ++ "]"
