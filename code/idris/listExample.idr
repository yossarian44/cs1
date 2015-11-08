import list
import Album
import ite
import bool
import relation
import pair

list1: list Album
list1 = achtung ::  stranger :: ok :: wall :: races :: sync :: nil

yearx: list Nat
yearx = map year list1

ownx: list Album
ownx = list.filter own list1

||| a test, expecting 3
count: Nat
count = count_rel list1 own

||| a test, expecting average release year of my records
avgyear: pair Nat Nat
avgyear = ave_rel list1 own year

||| a test, expecting sum of record release years
sumyear: Nat
sumyear = sum_rel list1 own year
