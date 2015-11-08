import list
import bool
import nat
import eq
import Serialize

-- length tests
||| a test, expecting 0
l1: nat
l1 = len nil{a = bool}

||| a test, expecting 1
l2: nat
l2 = len (true :: nil)

||| a test, expecting 3
l3: nat
l3 = len (2 :: 7 :: 8 :: nil)

--append tests
||| a test, expecting (1 :: nil)
a1: list Nat
a1 = nil ++ (1 :: nil)

||| a test, expecting (1 :: 2 :: 3 :: 4 :: 5 :: 6 :: nil)
a2: list Nat
a2 = (1 :: 2 :: 3 :: nil) ++ (4 :: 5 :: 6 :: nil)

--map test
||| a test, expecting (true :: false :: true :: true :: nil)
m1: list bool
m1 = map evenb (O :: (S O) :: (S (S O)) :: (S (S (S (S O)))) :: nil)

--filter test
||| a test, expecting (O :: (S (S O)) :: (S (S (S (S O)))) :: nil)
f1: list nat
f1 = filter evenb (O :: (S O) :: (S (S O)) :: (S (S (S (S O)))) :: nil)

--member test
||| a test, expecting true
isThree: bool
isThree = member (S (S (S O))) ((S O)::(S (S O))::(S (S (S O)))::nil)

s: String
s = toString ((S O)::(S (S O))::nil)
