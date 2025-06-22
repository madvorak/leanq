import Leanq.Basic


def numbers : List Nat := [ 10, 5, 99, 4, 12, 1, 3, 9, 8, 6, 7, 2, 0, 10, 10 ]
def numberTest : List Nat := from num in numbers where num < 10 select num ^ (9 - num)
#check numberTest
#print numberTest
#eval  numberTest

def names : List String := [ "Martin Dvorak", "Ash Ketchup", "Gary Oak", "Madonna", "Pyotr Ilyich Tchaikovsky", "Antonin Dvorak" ]
def nameTest : List String := from nam in names where (nam.splitOn " ").length == 2 select nam.replace " " ""
#check nameTest
#print nameTest
#eval  nameTest


structure User where
  id : Int
  firstName : String
  lastName : String
  position : String

def users : List User := [ ⟨7, "Martin", "Dvorak", "student"⟩, ⟨8, "Ivan", "Sergeev", "postdoc"⟩, ⟨9, "Vladimir", "Kolmogorov", "professor"⟩ ]

structure Item where
  title : String
  borrowedBy : Int

def items : List Item := [ ⟨"Matroid Decomposition", 7⟩, ⟨"Matroid Theory", 8⟩, ⟨"Journey to the edge of reason", 7⟩, ⟨"Bible", 0⟩ ]
